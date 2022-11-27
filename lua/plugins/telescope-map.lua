local function builtin(picker)
  return '<cmd>lua require("telescope.builtin").' .. picker .. '()<CR>'
end

vim.keymap.set('n', '<leader>f<Space>', ':<C-u>Telescope<Space>',
  { desc = 'Enter Command Mode' }
)

vim.keymap.set('n', '<leader>f<CR>', builtin('builtin'),
  { desc = 'Telescope' }
)
vim.keymap.set('n', '<leader>ff', builtin('find_files'),
  { desc = 'Find Files' }
)
vim.keymap.set('n', '<leader>fg', builtin('live_grep'),
  { desc = 'Live Fuzzy Search (Grep)' }
)
vim.keymap.set('n', '<leader>fb', builtin('buffers'),
  { desc = 'Buffers' }
)
vim.keymap.set('n', '<leader>fo', builtin('oldfiles'),
  { desc = 'Old Files' }
)
vim.keymap.set('n', '<leader>fc', builtin('commands'),
  { desc = 'Commands' }
)
vim.keymap.set('n', '<leader>fj', builtin('jumplist'),
  { desc = 'Jump List' }
)
vim.keymap.set('n', '<leader>fv', builtin('registers'),
  { desc = 'Vim Registers' }
)
vim.keymap.set('n', '<leader>fz', builtin('current_buffer_fuzzy_find'),
  { desc = 'Live Fuzzy Search in the Current Buffer' }
)

vim.keymap.set('n', '<leader>fr', builtin('lsp_references'),
  { desc = 'LSP References' }
)
vim.keymap.set('n', '<leader>fs', builtin('lsp_document_symbols'),
  { desc = 'LSP Symbols in the Current Buffer' }
)
vim.keymap.set('n', '<leader>fd', builtin('diagnostics'),
  { desc = 'LSP Diagnostics in the Current Buffer' }
)

vim.keymap.set('n', '<leader>fp', '<Cmd>lua require("telescope").extensions.command_palette.command_palette()<CR>',
  { desc = 'Command Palette' }
)
