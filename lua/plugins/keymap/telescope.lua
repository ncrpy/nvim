return {
  {
    "<leader>f<Space>",
    ":<C-u>Telescope<Space>",
    { desc = "Enter Command Mode" }
  },
  {
    "<leader>f<CR>",
    "<Cmd>Telescope<CR>",
    { desc = "Telescope" }
  },
  {
    "<leader>ff",
    "<Cmd>Telescope find_files<CR>",
    { desc = "Find Files" }
  },
  {
    "<leader>fg",
    "<Cmd>Telescope live_grep<CR>",
    { desc = "Live Fuzzy Search (Grep)" }
  },
  {
    "<leader>fb",
    "<Cmd>Telescope buffers<CR>",
    { desc = "Buffers" }
  },
  {
    "<leader>fo",
    "<Cmd>Telescope oldfiles<CR>",
    { desc = "Old Files" }
  },
  {
    "<leader>fc",
    "<Cmd>Telescope commands<CR>",
    { desc = "Commands" }
  },
  {
    "<leader>fj",
    "<Cmd>Telescope jumplist<CR>",
    { desc = "Jump List" }
  },
  {
    "<leader>fv",
    "<Cmd>Telescope registers<CR>",
    { desc = "Vim Registers" }
  },
  {
    "<leader>fz",
    "<Cmd>Telescope current_buffer_fuzzy_find<CR>",
    { desc = "Live Fuzzy Search in the Current Buffer" }
  },

  {
    "<leader>fr",
    "<Cmd>Telescope lsp_references<CR>",
    { desc = "LSP References" }
  },
  {
    "<leader>fs",
    "<Cmd>Telescope lsp_document_symbols<CR>",
    { desc = "LSP Symbols in the Current Buffer" }
  },
  {
    "<leader>fd",
    "<Cmd>Telescope diagnostics<CR>",
    { desc = "LSP Diagnostics in the Current Buffer" }
  },
}
