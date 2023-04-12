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
    config = true
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
  }
}
