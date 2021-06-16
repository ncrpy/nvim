local nvim_lsp = require'lspconfig'

function contains(tab, val)
    local set = {}
    for _, l in ipairs(tab) do set[l] = true end
    return set[val] ~= nil
end

local ft = vim.bo.filetype

if ft == "" then do end
elseif contains({"c", "cpp"}, ft) then
    nvim_lsp.clangd.setup{}
elseif contains({"python"}, ft) then
    nvim_lsp.jedi_language_server.setup{}
    nvim_lsp.pyright.setup{}
--    nvim_lsp.pylsp.setup{
--        settings = {
--            pylsp = {
--                configurationSources = {"flake8"},
--                plugins = {
--                    mccabe = {enabled = false},
--                    pycodestyle = {enabled = false},
--                    pydocstyle = {enabled = false},
--                    pyflakes = {enabled = false},
--                    pylint = {enabled = false},
--                    autopep8 = {enabled = false},
--                    yapf = {enabled = false},
--                    preload = {enabled = false},
--                    flake8 = {enabled = true},
--                    python_lsp_black = {enabled = true},
--                    pyls_isort = {enabled = true}
--                }
--            }
--        }
--    }
elseif contains({"tex", "latex"}, ft) then
    nvim_lsp.texlab.setup{}
elseif contains({"r"}, ft) then
    nvim_lsp.r_language_server.setup{}
end
nvim_lsp.efm.setup{
    init_options = {
        documentFormatting = false
    },
    filetypes = {"python"},
    settings = {
        languages = {
            python = {
                {
                    LintCommand = vim.g.python3_host_prog.." -m flake8 --max-complexity 10 --stdin-display-name ${INPUT} -",
                    lintStdin = true,
                    lintFormats = {"%f:%l:%c: %m"}
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

vim.api.nvim_set_keymap('n', 'K', "<cmd>lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
