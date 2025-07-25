return {
  {
    "nvim-lua/plenary.nvim",
    version = false,
  },

  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    keys = require("plugins.config.snacks").keys,
    opts = require("plugins.config.snacks").opts,
  },

  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    cmd = { "NvimTreeToggle" },
    keys = require("plugins.config.nvim-tree").keys,
    opts = require("plugins.config.nvim-tree").opts,
  },

  {
    "stevearc/quicker.nvim",
    ft = { "qf" },
    keys = require("plugins.config.quicker").keys,
    opts = require("plugins.config.quicker").opts,
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional
      "folke/snacks.nvim", -- optional
    },
    cmd = { "Neogit" },
    opts = require("plugins.config.neogit").opts,
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        version = "v3.9.3", -- v4.0.0 is broken
        -- dependencies = "nvim-neotest/nvim-nio",
      },
    },
    keys = require("plugins.config.dap").keys,
    opts = require("plugins.config.dap").opts,
    config = require("plugins.config.dap").setup,
  },

  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm" },
    keys = require("plugins.config.toggleterm").keys,
    opts = require("plugins.config.toggleterm").opts,
    config = require("plugins.config.toggleterm").setup,
  },

  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    cmd = { "AerialToggle", "AerialNavToggle", "AerialInfo" },
    keys = require("plugins.config.aerial").keys,
    opts = require("plugins.config.aerial").opts,
    -- config = require("plugins.config.aerial").setup,
  },

  {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo", "Format", "FormatEnable" },
    keys = require("plugins.config.conform").keys,
    opts = require("plugins.config.conform").opts,
    config = require("plugins.config.conform").setup,
  },

  {
    "kylechui/nvim-surround",
    version = "^3.0.0",
    event = "VeryLazy",
    opts = {},
  },

  {
    "NMAC427/guess-indent.nvim",
    event = { "BufReadPre" },
    opts = require("plugins.config.guess-indent").opts,
  },
}
