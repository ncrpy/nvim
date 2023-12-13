return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    cmd = { "NvimTreeToggle" },
    keys = require("plugins.config.nvim-tree").keys,
    opts = require("plugins.config.nvim-tree").opts,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
    },
    cmd = { "Telescope" },
    keys = require("plugins.config.telescope").keys,
    init = function()
      vim.api.nvim_create_augroup("TelescopeLoaded", {})
    end,
    opts = require("plugins.config.telescope").opts,
    config = function(_, opts)
      require("telescope").setup(opts)
      vim.api.nvim_exec_autocmds("User", {
        group = "TelescopeLoaded",
        pattern = "TelescopeLoaded",
      })
    end,
  },

  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle" },
    keys = require("plugins.config.trouble").keys,
    opts = {},
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
    },
    cmd = { "Neogit" },
    opts = require("plugins.config.neogit").opts,
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
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
  },

  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    cmd = { "AerialToggle", "AerialNavToggle", "AerialInfo" },
    keys = require("plugins.config.aerial").keys,
    opts = require("plugins.config.aerial").opts,
    config = require("plugins.config.aerial").setup,
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
    event = "VeryLazy",
    opts = {},
  },

  {
    "numToStr/Comment.nvim",
    dependencies = {
      {
        "JoosepAlviste/nvim-ts-context-commentstring",
        opts = require("plugins.config.commentstring").opts,
      },
    },
    event = { "FileType" },
    opts = require("plugins.config.comment").opts,
  },

  {
    "folke/zen-mode.nvim",
    keys = require("plugins.config.zen-mode").keys,
  },

  {
    "NMAC427/guess-indent.nvim",
    event = { "BufReadPre" },
    opts = require("plugins.config.guess-indent").opts,
  },
}
