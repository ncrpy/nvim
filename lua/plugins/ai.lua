local utils = require("utils")
local keymap = require("plugins.keymap")

return {
  {
    "zbirenbaum/copilot.lua",
    cond = utils.executable("node"),
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
    keys = keymap.codecompanion,
    opts = utils.wrap_opts()
  },
}
