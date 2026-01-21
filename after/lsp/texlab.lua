---@type vim.lsp.Config
return {
  settings = {
    texlab = {
      build = {
        args = { "-interaction=nonstopmode", "-synctex=1", "%f" },
        forwardSearchAfter = true,
        onSave = true,
      },
      forwardSearch = {
        executable = "zathura",
        args = { "--synctex-forward", "%l:0:%f", "%p" },
      },
    },
  },
}
