return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- version = false,
    build = function()
      local ok, install = pcall(require, "nvim-treesitter.install")
      return ok and install.update({ with_sync = false })
    end,
    dependencies = {
      "HiPhish/rainbow-delimiters.nvim",
      "JoosepAlviste/nvim-ts-context-commentstring"
    },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("plugins.config.treesitter")
    end
  }
}
