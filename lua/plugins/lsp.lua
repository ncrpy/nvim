return {
  {
    "williamboman/mason.nvim",
    cmd = {
      "Mason",
      "MasonInstall",
      "MasonInstallAll",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog"
    },
    opts = {}
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim"
    },
    opts = {}
  },

  {
    "neovim/nvim-lspconfig",
    version = false,
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp"
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("plugins.config.lspconfig")
    end
  }
}
