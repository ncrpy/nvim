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
    opts = {}
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim"
    },
    cmd = { "Telescope" },
    keys = function()
      return require("plugins.keymap.telescope")
    end,
    opts = function()
      return require("plugins.config.telescope")
    end
  },

  {
    "folke/trouble.nvim",
    cmd = { "TroubleToggle" },
    keys = function()
      return require("plugins.keymap.trouble")
    end,
    opts = {}
  }
}
