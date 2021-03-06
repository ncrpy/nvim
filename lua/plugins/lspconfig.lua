local nvim_lsp = require'lspconfig'

local function contains(tab, val)
    local set = {}
    for _, l in ipairs(tab) do set[l] = true end
    return set[val] ~= nil
end

local servers = {
    clangd = {},
    jedi_language_server = {
        init_options = {
            diagnostics = {enable = false},
            completion = {disableSnippets = true},
        }
    },
--    pylsp = {
--        settings = {
--            pylsp = {
--                configurationSources = {"flake8"},
--                plugins = {
--                    autopep8 = {enabled = false},
--                    folding = {enabled = false},
--                    flake8 = {enabled = true},
--                    jedi_completion = {enabled = false},
--                    jedi_definition = {enabled = false},
--                    jedi_hover = {enabled = false},
--                    jedi_highlight = {enabled = false},
--                    jedi_references = {enabled = false},
--                    fedi_rename = {enabled = false},
--                    jedi_signature_help = {enabled = false},
--                    jedi_synbols = {enabled = false},
--                    mccabe = {enabled = false},
--                    preload = {enabled = false},
--                    pycodestyle = {enabled = false},
--                    pydocstyle = {enabled = false},
--                    pyflakes = {enabled = false},
--                    pylint = {enabled = false},
--                    rope_completion = {enabled = false},
--                    rope_rename = {enabled = false},
--                    yapf = {enabled = false},
--                }
--            }
--        }
--    },
--    pyright = {
--        settings = {
--            pyright = {
--                disableLanguageServices = true
--            }
--        }
--    },
    texlab = {},
    r_language_server = {},
    vimls = {
        cmd = {vim.fn.stdpath('config').."/node_modules/.bin/vim-language-server", "--stdio"}
    },
    efm = {
        filetypes = {"python"},
        init_options = {
            documentFormatting = false
        },
        settings = {
            languages = {
                python = {
                    {
                        LintCommand = "flake8 --max-complexity 10 --stdin-display-name ${INPUT} -",
                        lintStdin = true,
                        lintFormats = {"%f:%l:%c: %m"}
                    },
                    {
                        LintCommand = "mypy --show-column-numbers --ignore-missing-imports --no-site-packages --cache-dir=/dev/null",
                        lintFormats = {
                            "%f:%l:%c: %trror: %m",
                            "%f:%l:%c: %tarning: %m",
                            "%f:%l:%c: %tote: %m"
                        },
                    },
--                    {
--                        formatCommand = "isort --quiet -",
--                        formatStdin = true
--                    },
--                    {
--                        formatCommand = "black --quiet -",
--                        formatStdin = true
--                    },
                }
            }
        }
    },
}

for server, config in pairs(servers) do
    if vim.fn.executable(server) then
        nvim_lsp[server].setup(config)
    end
end

require("plugins.sumneko-lua")

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
