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
    config = function()
      local group = vim.api.nvim_create_augroup("count_buffers", {})
      local function barbar_setup()
        if #(vim.fn.getbufinfo({ buflisted = 1 })) > 1 then
          require("plugins.config.barbar")
          vim.api.nvim_del_augroup_by_id(group)
        end
      end
      vim.api.nvim_create_autocmd("BufEnter", {
        group = group,
        callback = barbar_setup
      })
      barbar_setup()
    end
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "VeryLazy",
    config = function()
      require("plugins.config.indent-blankline")
    end
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = true
  },

  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    config = true
  },

  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    config = function()
      require("plugins.config.notify")
    end
  },

  -- Noice is a good plugin but I prefer to use the legacy cmdline
  -- {
  --   "folke/noice.nvim",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "rcarriga/nvim-notify",
  --   },
  --   event = "VeryLazy",
  --   config = function()
  --     require("plugins.config.noice")
  --   end
  -- },

  {
    "norcalli/nvim-colorizer.lua",
    cmd = { "ColorizerToggle" },
    config = function()
      vim.opt.termguicolors = true
      require("colorizer").setup()
    end
  }
}
