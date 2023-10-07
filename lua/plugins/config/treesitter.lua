local M = {}

M.opts =  {
  ensure_installed = {},
  highlight = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}

M.setup = function(opts)
  require("nvim-treesitter.configs").setup(opts)
end

return M
