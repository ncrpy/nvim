local utils = require("utils")

return {
  {
    "zbirenbaum/copilot.lua",
    enabled = utils.executable("node"),
    cmd = { "Copilot" },
    event = { "InsertEnter" },
    opts = utils.wrap_opts(),
  },

  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    cmd = { "CodeCompanion", "CodeCompanionActions", "CodeCompanionChat", "CodeCompanionCmd" },
    keys = require("plugins.keymap").codecompanion,
    opts = utils.wrap_opts()
  },
}
