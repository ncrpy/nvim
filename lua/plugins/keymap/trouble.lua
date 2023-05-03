return {
  {
    "<leader>xx",
    "<Cmd>TroubleToggle<CR>",
    { desc = 'Toggle Trouble' }
  },
  {
    "<leader>xw",
    "<Cmd>TroubleToggle workspace_diagnostics<CR>",
    { desc = 'Workspace Diagnostics' }
  },
  {
    "<leader>xd",
    "<Cmd>TroubleToggle document_diagnostics<CR>",
    { desc = 'Document Diagnostics' }
  },
  {
    "<leader>xl",
    "<Cmd>TroubleToggle loclist<CR>",
    { desc = 'Location List' }
  },
  {
    "<leader>xq",
    "<Cmd>TroubleToggle quickfix<CR>",
    { desc = 'Quickfix' }
  },
  {
    "gr",
    "<Cmd>TroubleToggle lsp_references<CR>",
    { desc = 'LSP References' }
  }
}
