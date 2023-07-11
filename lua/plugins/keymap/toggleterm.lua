return {
  {
    "<C-\\>",
    "<Cmd>exe v:count1 . 'ToggleTerm'<CR>",
    mode = { "n", "i" },
    { desc = "ToggleTerm" }
  },
  {
    "<leader>t",
    "<Cmd>exe v:count1 . 'ToggleTerm'<CR>",
    { desc = "ToggleTerm" }
  }
}
