local M = {}

M.opts = {
  ensure_installed = {},
  highlight = {
    enable = true,
  },
}

M.setup = function(_, opts)
  require("nvim-treesitter.configs").setup(opts)
end

return M
