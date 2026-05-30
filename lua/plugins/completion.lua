local utils = require("utils")

return {
  {
    "saghen/blink.cmp",
    -- use a release tag to download pre-built binaries
    version = "1.*",
    event = { "InsertEnter" },
    opts = utils.wrap_opts("blink-cmp"),
    opts_extend = { "sources.default" }
  },

  -- optional: provides snippets for the snippet source
  {
    "rafamadriz/friendly-snippets"
  },

  {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    opts = {},
  },

  {
    "h-hg/fcitx.nvim",
    cond = utils.executable("fcitx5-remote"),
    event = { "InsertEnter" },
  },
}
