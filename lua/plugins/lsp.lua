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
    config = true
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim"
    },
    config = true
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
