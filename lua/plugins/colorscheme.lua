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
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup {
        transparent_background = false
      }
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
