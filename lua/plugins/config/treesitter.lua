require "nvim-treesitter.configs".setup {
  ensure_installed = {},
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
