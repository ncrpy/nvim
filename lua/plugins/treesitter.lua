local ok, install = pcall(require, "nvim-treesitter.install")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ok and install.update{ with_sync = true },
    dependencies = {
      "HiPhish/nvim-ts-rainbow2"
    },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("plugins.config.treesitter")
    end
  }
}
