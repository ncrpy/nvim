return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    cmd = { "NvimTreeToggle" },
    keys = function()
      return require("plugins.keymap.nvim-tree")
    end,
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
    keys = function()
      return require("plugins.keymap.telescope")
    end,
    config = function()
      require("plugins.config.telescope")
    end
  },

  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle" },
    keys = function()
      return require("plugins.keymap.trouble")
    end,
    config = true
  },

  {
    "mfussenegger/nvim-dap",
    dependencies = {
      -- https://github.com/rcarriga/nvim-dap-ui/issues/258
      "rcarriga/nvim-dap-ui", version = "3.6.4"
    },
    keys = function()
      return require("plugins.keymap.dap")
    end,
    config = function()
      require("plugins.config.dap")
    end
  },

  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm" },
    keys = function()
      return require("plugins.keymap.toggleterm")
    end,
    config = function()
      require("plugins.config.toggleterm")
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
  }
}
