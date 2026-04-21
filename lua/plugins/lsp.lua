local utils = require("utils")

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
    config = utils.wrap_setup("lspconfig")
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^6", -- Recommended
    enabled = utils.executable("rust-analyzer"),
    event = { "BufReadPre", "BufNewFile" },
    ft = { "rust" },
  },

  {
    "veryl-lang/veryl.vim",
    ft = { "veryl" },
  },
}
