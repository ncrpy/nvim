return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = require("plugins.config.lualine").opts,
  },

  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    event = "VeryLazy",
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
    opts = require("plugins.config.barbar").opts,
    config = require("plugins.config.barbar").setup,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "VeryLazy",
    opts = require("plugins.config.indent-blankline").opts,
    config = require("plugins.config.indent-blankline").setup,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = {},
  },

  -- {
  --   "stevearc/dressing.nvim",
  --   event = "VeryLazy",
  --   opts = {},
  -- },

  -- {
  --   "rcarriga/nvim-notify",
  --   event = "VeryLazy",
  --   opts = require("plugins.config.notify").opts,
  --   config = require("plugins.config.notify").setup,
  -- },

  {
    "norcalli/nvim-colorizer.lua",
    cmd = { "ColorizerToggle" },
    config = function()
      vim.opt.termguicolors = true
      require("colorizer").setup()
    end,
  },
}
