vim.keymap.set(
  {'n', 'v'},
  '<leader>k',
  '<Cmd>Format<CR>',
  {
    silent = true,
    desc = 'Format Document'
  }
)
