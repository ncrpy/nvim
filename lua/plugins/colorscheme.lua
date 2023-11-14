return {
  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     groups = {
  --       all = {
  --         Normal = { bg = "none" }
  --       }
  --     }
  --   }
  -- },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    event = { "OptionSet background", "User VeryLazyPre" },
    opts = {
      transparent_background = false,
      integrations = {
        aerial = true,
        barbar = true,
        indent_blankline = {
          colored_indent_levels = true
        },
        mason = true,
        notify = true,
        lsp_trouble = true,
      }
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
