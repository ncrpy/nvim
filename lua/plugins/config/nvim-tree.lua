require("nvim-tree").setup {
  renderer = {
    special_files = { "README.md", "Makefile" }
  },
  filters = {
    dotfiles = true
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}
