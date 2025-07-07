return {
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
    opts = {},
    config = require("plugins.config.lspconfig").setup,
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^6", -- Recommended
    enabled = function()
      return vim.fn.executable("rust-analyzer") == 1
    end,
    event = { "BufReadPre", "BufNewFile" },
    ft = { "rust" },
  },
}
