vim.lsp.enable("lua_ls")
vim.lsp.enable("clangd")
vim.lsp.enable("jedi_language_server")
vim.lsp.enable("basedpyright")

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "",
      [vim.diagnostic.severity.HINT] = "",
    }
  }
})
