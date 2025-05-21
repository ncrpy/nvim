return {
  {
    "zbirenbaum/copilot.lua",
    enabled = function()
      return vim.fn.executable("node") == 1
    end,
    cmd = { "Copilot" },
    event = vim.fn.filereadable(vim.fn.expand("${XDG_CONFIG_HOME}/github-copilot/hosts.json")) == 1
      and { "InsertEnter" }, -- for first auth
    opts = require("plugins.config.copilot").opts,
  },

  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    cmd = { "CodeCompanion", "CodeCompanionActions", "CodeCompanionChat", "CodeCompanionCmd" },
    opts = require("plugins.config.codecompanion").opts,
  },
}
