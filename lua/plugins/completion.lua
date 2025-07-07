return {
  {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = { "rafamadriz/friendly-snippets" },
    -- use a release tag to download pre-built binaries
    version = "1.*",
    event = { "InsertEnter" },
    opts = require("plugins.config.blink-cmp").opts,
    opts_extend = { "sources.default" }
  },

  {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    opts = {},
  },

  {
    "h-hg/fcitx.nvim",
    enabled = function()
      return vim.fn.executable("fcitx5-remote") == 1
    end,
    event = { "InsertEnter" },
  },
}
