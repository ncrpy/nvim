local M = {}

M.keys = {
  {
    "<leader>n",
    "<Cmd>NvimTreeToggle<CR>",
    mode = { "n", "x" },
    desc = "NvimTree",
  },
}

M.opts = {
  renderer = {
    special_files = { "README.md", "Makefile" },
  },
  filters = {
    dotfiles = true,
  },
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
}

return M
