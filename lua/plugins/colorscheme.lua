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
    config = function()
      require("catppuccin").setup {
        transparent_background = false
      }
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
