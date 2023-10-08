return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    cmd = { "NvimTreeToggle" },
    keys = require("plugins.keymap.nvim-tree"),
    opts = require("plugins.config.nvim-tree").opts
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim"
    },
    cmd = { "Telescope" },
    keys = require("plugins.keymap.telescope"),
    init = function()
      vim.api.nvim_create_augroup("TelescopeLoaded", {})
    end,
    opts = require("plugins.config.telescope").opts,
    config = function(_, opts)
      require("telescope").setup(opts)
      vim.api.nvim_exec_autocmds("User", {
        group = "TelescopeLoaded",
        pattern = "TelescopeLoaded"
      })
    end
  },

  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle" },
    keys = require("plugins.keymap.trouble"),
    opts = {}
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim",        -- optional
    },
    cmd = { "Neogit" },
    opts = require("plugins.config.neogit").opts
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui"
    },
    keys = require("plugins.keymap.dap"),
    opts = require("plugins.config.dap").opts,
    config = require("plugins.config.dap").setup
  },

  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm" },
    keys = require("plugins.keymap.toggleterm"),
    opts = require("plugins.config.toggleterm").opts
  },

  -- {
  --   -- "simrat39/symbols-outline.nvim",
  --   "enddeadroyal/symbols-outline.nvim",
  --   branch = "bugfix/symbol-hover-misplacement",
  --   cmd = { "SymbolsOutline" },
  --   keys = require("plugins.keymap.outline"),
  --   opts = require("plugins.config.outline").opts
  -- },

  {
    "stevearc/aerial.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    cmd = { "AerialToggle" },
    keys = require("plugins.keymap.aerial"),
    opts = require("plugins.config.aerial").opts,
    config = require("plugins.config.aerial").setup
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {}
  },

  {
    "numToStr/Comment.nvim",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    event = { "FileType" },
    opts = require("plugins.config.comment").opts
  },

  {
    "folke/zen-mode.nvim",
    keys = require("plugins.keymap.zen-mode")
  }
}
