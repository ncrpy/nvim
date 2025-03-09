return {
  {
    "williamboman/mason.nvim",
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
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    event = { "BufReadPre", "BufNewFile" },
    keys = require("plugins.config.lspconfig").keys,
    opts = require("plugins.config.lspconfig").opts,
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
