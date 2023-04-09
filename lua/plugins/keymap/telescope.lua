local builtin = require("telescope.builtin")

return {
  {
    "<leader>f<Space>",
    ":<C-u>Telescope<Space>",
    { desc = "Enter Command Mode" }
  },
  {
    "<leader>f<CR>",
    builtin.builtin,
    { desc = "Telescope" }
  },
  {
    "<leader>ff",
    builtin.find_files,
    { desc = "Find Files" }
  },
  {
    "<leader>fg",
    builtin.live_grep,
    { desc = "Live Fuzzy Search (Grep)" }
  },
  {
    "<leader>fb",
    builtin.buffers,
    { desc = "Buffers" }
  },
  {
    "<leader>fo",
    builtin.oldfiles,
    { desc = "Old Files" }
  },
  {
    "<leader>fc",
    builtin.commands,
    { desc = "Commands" }
  },
  {
    "<leader>fj",
    builtin.jumplist,
    { desc = "Jump List" }
  },
  {
    "<leader>fv",
    builtin.registers,
    { desc = "Vim Registers" }
  },
  {
    "<leader>fz",
    builtin.current_buffer_fuzzy_find,
    { desc = "Live Fuzzy Search in the Current Buffer" }
  },

  {
    "<leader>fr",
    builtin.lsp_references,
    { desc = "LSP References" }
  },
  {
    "<leader>fs",
    builtin.lsp_document_symbols,
    { desc = "LSP Symbols in the Current Buffer" }
  },
  {
    "<leader>fd",
    builtin.diagnostics,
    { desc = "LSP Diagnostics in the Current Buffer" }
  },
}
