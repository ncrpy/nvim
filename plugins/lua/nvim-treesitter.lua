require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    ignore_installed = {},
    highlight = {
        enable = true,
        disable = {},
    },
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = 1000,
  }
}
