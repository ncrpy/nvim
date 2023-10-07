return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    cmd = { "NvimTreeToggle" },
    keys = require("plugins.keymap.nvim-tree"),
    config = function()
      require("plugins.config.nvim-tree")
    end
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
    config = function()
      require("plugins.config.telescope")
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
    config = true
  },

  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",         -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim",        -- optional
    },
    cmd = { "Neogit" },
    config = function()
      require("plugins.config.neogit")
    end
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui"
    },
    keys = require("plugins.keymap.dap"),
    config = function()
      require("plugins.config.dap")
    end
  },

  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm" },
    keys = require("plugins.keymap.toggleterm"),
    config = function()
      require("plugins.config.toggleterm")
    end
  },

  {
    "simrat39/symbols-outline.nvim",
    cmd = { "SymbolsOutline" },
    keys = require("plugins.keymap.outline"),
    config = function()
      require("plugins.config.outline")
    end
  },

  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = true
  },

  {
    "numToStr/Comment.nvim",
    dependencies = {
      "JoosepAlviste/nvim-ts-context-commentstring",
    },
    event = "VeryLazy",
    config = function()
      require("plugins.config.comment")
    end
  },

  {
    "folke/zen-mode.nvim",
    keys = require("plugins.keymap.zen-mode")
  }
}
