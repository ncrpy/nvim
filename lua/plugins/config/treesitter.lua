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

M.setup = function(_, opts)
  require("nvim-treesitter.configs").setup(opts)
end

return M
