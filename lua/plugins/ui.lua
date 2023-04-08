return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return require("plugins.config.lualine")
    end
  },
  {
    "romgrk/barbar.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    event = "VeryLazy",
    init = function()
      vim.g.barbar_auto_setup = false
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("config_custom_highlights", {}),
        callback = function()
          vim.api.nvim_set_hl(0, "BufferCurrent", {bg = "none"})
          vim.api.nvim_set_hl(0, "BufferCurrentIndex", {bg = "none"})
          vim.api.nvim_set_hl(0, "BufferCurrentMod", {bg = "none"})
          vim.api.nvim_set_hl(0, "BufferCurrentSign", {bg = "none"})
          vim.api.nvim_set_hl(0, "BufferCurrentTarget", {bg = "none"})
        end
    })
    end,
    opts = {}
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "VeryLazy"
  },
  {
    "nvim-tree/nvim-web-devicons"
  }
}
