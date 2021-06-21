local nvim_lsp = require'lspconfig'

local function contains(tab, val)
    local set = {}
    for _, l in ipairs(tab) do set[l] = true end
    return set[val] ~= nil
end

nvim_lsp.clangd.setup{
    filetypes = {"c", "cpp"},
}
nvim_lsp.jedi_language_server.setup{
    filetypes = {"python"},
    init_options = {
        diagnostics = {enable = false},
        completion = {disableSnippets = true},
    }
}
--nvim_lsp.pylsp.setup{
--    filetypes = {"python"},
--    settings = {
--        pylsp = {
--            configurationSources = {"flake8"},
--            plugins = {
--                autopep8 = {enabled = false},
--                folding = {enabled = false},
--                flake8 = {enabled = true},
--                jedi_completion = {enabled = false},
--                jedi_definition = {enabled = false},
--                jedi_hover = {enabled = false},
--                jedi_highlight = {enabled = false},
--                jedi_references = {enabled = false},
--                fedi_rename = {enabled = false},
--                jedi_signature_help = {enabled = false},
--                jedi_synbols = {enabled = false},
--                mccabe = {enabled = false},
--                preload = {enabled = false},
--                pycodestyle = {enabled = false},
--                pydocstyle = {enabled = false},
--                pyflakes = {enabled = false},
--                pylint = {enabled = false},
--                rope_completion = {enabled = false},
--                rope_rename = {enabled = false},
--                yapf = {enabled = false},
--            }
--        }
--    }
--}
--nvim_lsp.pyright.setup{
--    filetypes = {"python"},
--    settings = {
--        pyright = {
--            disableLanguageServices = true
--        }
--    }
--}
nvim_lsp.texlab.setup{
    filetypes = {"tex", "latex"},
}
nvim_lsp.r_language_server.setup{
    filetypes = {"r"},
}
nvim_lsp.efm.setup{
    filetypes = {"python"},
    init_options = {
        documentFormatting = false
    },
    settings = {
        languages = {
            python = {
                {
                    LintCommand = vim.g.python3_host_prog.." -m flake8 --max-complexity 10 --stdin-display-name ${INPUT} -",
                    lintStdin = true,
                    lintFormats = {"%f:%l:%c: %m"}
                },
                {
                    LintCommand = vim.g.python3_host_prog.." -m mypy --show-column-numbers",
                    lintFormats = {
                        "%f:%l:%c: %trror: %m",
                        "%f:%l:%c: %tarning: %m",
                        "%f:%l:%c: %tote: %m"
                    },
                },
--                {
--                    formatCommand = vim.g.python3_host_prog.." -m isort --quiet -",
--                    formatStdin = true
--                },
--                {
--                    formatCommand = vim.g.python3_host_prog.." -m black --quiet -",
--                    formatStdin = true
--                }
            }
        }
    }
}

vim.fn.sign_define("LspDiagnosticsSignError",
    {text = ""})
vim.fn.sign_define("LspDiagnosticsSignWarning",
    {text = ""})
vim.fn.sign_define("LspDiagnosticsSignInformation",
    {text = ""})
vim.fn.sign_define("LspDiagnosticsSignHint",
    {text = ""})

--Enable completion triggered by <c-x><c-o>
vim.api.nvim_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

-- Mappings.
local opts = { noremap=true, silent=true }

-- See `:help vim.lsp.*` for documentation on any of the below functions
vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
--  vim.api.nvim_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
--  vim.api.nvim_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
--  vim.api.nvim_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
--  vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
--  vim.api.nvim_set_keymap('n', 'grf', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
--  vim.api.nvim_set_keymap("n", "<leader>F", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
