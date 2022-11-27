vim.keymap.set("n", "<leader>xx", "<Cmd>TroubleToggle<CR>",
  { desc = 'Toggle Trouble' }
)
vim.keymap.set("n", "<leader>xw", "<Cmd>TroubleToggle workspace_diagnostics<CR>",
  { desc = 'Workspace Diagnostics' }
)
vim.keymap.set("n", "<leader>xd", "<Cmd>TroubleToggle document_diagnostics<CR>",
  { desc = 'Document Diagnostics' }
)
vim.keymap.set("n", "<leader>xl", "<Cmd>TroubleToggle loclist<CR>",
  { desc = 'Location List' }
)
vim.keymap.set("n", "<leader>xq", "<Cmd>TroubleToggle quickfix<CR>",
  { desc = 'Quickfix' }
)
vim.keymap.set("n", "gr", "<Cmd>TroubleToggle lsp_references<CR>",
  { desc = 'LSP References' }
)
