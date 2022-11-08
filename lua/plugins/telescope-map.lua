vim.keymap.set('n', '<leader>f<Space>', ':Telescope<Space>')

vim.keymap.set('n', '<leader>ff', '<Cmd>lua require("telescope.builtin").find_files()<CR>')
vim.keymap.set('n', '<leader>fg', '<Cmd>lua require("telescope.builtin").live_grep()<CR>')
vim.keymap.set('n', '<leader>fb', '<Cmd>lua require("telescope.builtin").buffers()<CR>')
vim.keymap.set('n', '<leader>fo', '<Cmd>lua require("telescope.builtin").oldfiles()<CR>')
vim.keymap.set('n', '<leader>fc', '<Cmd>lua require("telescope.builtin").commands()<CR>')
vim.keymap.set('n', '<leader>fj', '<Cmd>lua require("telescope.builtin").jumplist()<CR>')
vim.keymap.set('n', '<leader>fv', '<Cmd>lua require("telescope.builtin").registers()<CR>')
vim.keymap.set('n', '<leader>fz', '<Cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>')

vim.keymap.set('n', '<leader>fr', '<Cmd>lua require("telescope.builtin").lsp_references()<CR>')
vim.keymap.set('n', '<leader>fs', '<Cmd>lua require("telescope.builtin").lsp_document_symbol()<CR>')
vim.keymap.set('n', '<leader>fd', '<Cmd>lua require("telescope.builtin").diagnostic()<CR>')

vim.keymap.set('n', '<leader>fb', '<Cmd>lua require("telescope.builtin").builtin()<CR>')

vim.keymap.set('n', '<leader>fp', '<Cmd>lua require("telescope").extensions.command_palette.command_palette()<CR>')
