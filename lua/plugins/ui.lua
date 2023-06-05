return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
      require("plugins.config.lualine")
    end
  },

  {
    "romgrk/barbar.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    event = "VeryLazy",
    init = function()
      vim.g.barbar_auto_setup = false
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("transparent_barbar_bg", {}),
        callback = function()
          vim.api.nvim_set_hl(0, "BufferCurrent", { bg = "none" })
          vim.api.nvim_set_hl(0, "BufferCurrentIndex", { bg = "none" })
          vim.api.nvim_set_hl(0, "BufferCurrentMod", { bg = "none" })
          vim.api.nvim_set_hl(0, "BufferCurrentSign", { bg = "none" })
          vim.api.nvim_set_hl(0, "BufferCurrentTarget", { bg = "none" })
        end
      })
    end,
    config = function()
      require("plugins.config.barbar")
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy",
    config = true
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = true
  },

  {
    "norcalli/nvim-colorizer.lua",
    event = { "ColorScheme" },
    config = function()
      vim.opt.termguicolors = true
      require("colorizer").setup()
    end
  }
}
