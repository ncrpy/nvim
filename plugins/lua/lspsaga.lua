local saga = require 'lspsaga'

-- add your config value here
-- default value
-- use_saga_diagnostic_sign = false
-- error_sign = '',
-- warn_sign = '',
-- hint_sign = '',
-- infor_sign = '',
-- dianostic_header_icon = '   ',
-- code_action_icon = ' ',
-- code_action_prompt = {
--   enable = true,
--   sign = true,
--   sign_priority = 20,
--   virtual_text = true,
-- },
-- finder_definition_icon = '  ',
-- finder_reference_icon = '  ',
-- max_preview_lines = 10, -- preview lines of lsp_finder and definition preview
-- finder_action_keys = {
--   open = 'o', vsplit = 's',split = 'i',quit = 'q',scroll_down = '<C-f>', scroll_up = '<C-b>' -- quit can be a table
-- },
-- code_action_keys = {
--   quit = 'q',exec = '<CR>'
-- },
-- rename_action_key = {
--   quit = '<C-c>',exec = '<CR>'  -- quit can be a table
-- },
-- definition_preview_icon = '  '
-- "single" "double" "round" "plus"
-- border_style = "single"
-- rename_prompt_prefix = '➤',
-- if you don't use nvim-lspconfig you must pass your server name and
-- the related filetypes into this table
-- like server_filetype_map = {metals = {'sbt', 'scala'}}
-- server_filetype_map = {}

saga.init_lsp_saga {
  --  your custom option here
  use_saga_diagnostic_sign = false
}

--  use default config
--saga.init_lsp_saga()

vim.api.nvim_set_keymap('n', '<leader>gh', "<cmd>lua require('lspsaga.provider').lsp_finder()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gca', "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<leader>gca', ":<C-U>lua require('lspsaga.codeaction').range_code_action()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', 'K', "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>", { noremap = true, silent = true })
--  vim.api.nvim_set_keymap('n', '<C-n>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", { noremap = true, silent = true })
--  vim.api.nvim_set_keymap('n', '<C-p>', "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gs', "<cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gr', "<cmd>lua require('lspsaga.rename').rename()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>gd', "<cmd>lua require'lspsaga.provider'.preview_definition()<CR>", { noremap = true, silent = true })
