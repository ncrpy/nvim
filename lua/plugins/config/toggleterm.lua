local M = {}

M.opts = {
  open_mapping = "<C-\\>",
  persist_mode = false,
  start_in_insert = true,
  direction = "float",
}

M.setup = function(_, opts)
  require("toggleterm").setup(opts)

  local group = vim.api.nvim_create_augroup("toggleterm", {})
  vim.api.nvim_create_autocmd("TermOpen", {
    group = group,
    pattern = { "term://*#toggleterm#*", "term://*::toggleterm::*" },
    callback = function()
      vim.keymap.set("n", "q", "<Cmd>close<CR>", { buffer = 0, desc = "Close ToggleTerm" })
    end,
  })
end

M.keys = {
  -- open_mapping will be mapped automatically by toggleterm.nvim
  {
    "<C-\\>",
  --   "<Cmd>exe v:count1 . 'ToggleTerm'<CR>",
  --   mode = { "n", "i" },
  --   { desc = "ToggleTerm" },
  },
  -- {
  --   "<leader>t",
  --   "<Cmd>exe v:count1 . 'ToggleTerm'<CR>",
  --   { desc = "ToggleTerm" },
  -- },
}

return M
