return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = require("plugins.config.lualine").opts
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
    opts = require("plugins.config.barbar").opts,
    config = function(opts)
      local group = vim.api.nvim_create_augroup("count_buffers", {})
      local function barbar_setup()
        if #(vim.fn.getbufinfo({ buflisted = 1 })) > 1 then
          require("barbar").setup(opts)
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
    url = "https://gitlab.com/HiPhish/rainbow-delimiters.nvim",
    event = { "BufReadPre", "BufNewFile" },
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = "VeryLazy",
    opts = require("plugins.config.indent-blankline").opts
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = {}
  },

  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {}
  },

  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    opts = require("plugins.config.notify").opts
  },

  -- Noice is a good plugin but I prefer to use the legacy cmdline
  -- {
  --   "folke/noice.nvim",
  --   dependencies = {
  --     "MunifTanjim/nui.nvim",
  --     "rcarriga/nvim-notify",
  --   },
  --   event = "VeryLazy",
  --   opts = require("plugins.config.noice").opts
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
