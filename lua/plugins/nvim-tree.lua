require'nvim-tree'.setup {
  filters = {
    dotfiles = true
  },
  actions = {
    open_file = {
      quit_on_open = true
    }
  }
}
