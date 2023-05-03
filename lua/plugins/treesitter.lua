return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    dependencies = {
      "mrjones2014/nvim-ts-rainbow"
    },
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("plugins.config.treesitter")
    end
  }
}
