return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   event = { "BufReadPre", "BufNewFile" },
  --   -- keys = require("plugins.config.lspconfig").keys,
  --   -- opts = require("plugins.config.lspconfig").opts,
  --   -- config = require("plugins.config.lspconfig").setup,
  -- },

  {
    "mason-org/mason.nvim",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonInstallAll",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
    },
    opts = {},
  },

  {
    "mason-org/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    keys = require("plugins.config.lspconfig").keys,
    opts = {},
    config = require("plugins.config.lspconfig").setup,
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    enabled = function()
      return vim.fn.executable("rust-analyzer") == 1
    end,
    event = { "BufReadPre", "BufNewFile" },
    ft = { "rust" },
  },
}
