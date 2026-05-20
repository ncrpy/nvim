local utils = require("utils")

return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = utils.wrap_opts(),
  },

  {
    "romgrk/barbar.nvim",
    event = { "BufReadPost", "BufNewFile" },
    init = function()
      vim.g.barbar_auto_setup = false
      -- vim.api.nvim_create_autocmd("ColorScheme", {
      --   group = vim.api.nvim_create_augroup("transparent_barbar_bg", {}),
      --   callback = function()
      --     vim.api.nvim_set_hl(0, "BufferCurrent", { bg = "none" })
      --     vim.api.nvim_set_hl(0, "BufferCurrentIndex", { bg = "none" })
      --     vim.api.nvim_set_hl(0, "BufferCurrentMod", { bg = "none" })
      --     vim.api.nvim_set_hl(0, "BufferCurrentSign", { bg = "none" })
      --     vim.api.nvim_set_hl(0, "BufferCurrentTarget", { bg = "none" })
      --   end
      -- })
    end,
    opts = utils.wrap_opts(),
    config = utils.wrap_setup(),
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = utils.wrap_opts(),
    config = utils.wrap_setup(),
  },

  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = {},
  },

  -- {
  --   "stevearc/dressing.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  -- },

  {
    "rcarriga/nvim-notify",
    cmd = { "Notifications", "NotificationsClear", "NotificationsPick" },
    opts = utils.wrap_opts(),
    config = utils.wrap_setup(),
  },

  {
    "norcalli/nvim-colorizer.lua",
    cmd = { "ColorizerToggle" },
    opts = {},
  },
}
