return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- version = false,
    build = function()
      local ok, install = pcall(require, "nvim-treesitter.install")
      return ok and install.update({ with_sync = false })
    end,
    event = { "BufReadPost", "BufNewFile" },
    opts = require("plugins.config.treesitter").opts,
    config = require("plugins.config.treesitter").setup,
  },
}
