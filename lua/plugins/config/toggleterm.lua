local M = {}

M.opts = {
  open_mapping = "<C-\\>",
  insert_mappings = false,
  direction = "float",
}

M.keys = {
  {
    "<C-\\>",
    "<Cmd>exe v:count1 . 'ToggleTerm'<CR>",
    mode = { "n", "i" },
    { desc = "ToggleTerm" },
  },
  {
    "<leader>t",
    "<Cmd>exe v:count1 . 'ToggleTerm'<CR>",
    { desc = "ToggleTerm" },
  },
}

return M
