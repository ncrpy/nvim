return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "saadparwaiz1/cmp_luasnip", dependencies = "L3MON4D3/LuaSnip" }
    },
    event = { "InsertEnter" },
    config = function()
      require("plugins.config.cmp")
    end,
  },

  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = true
  },

  {
    "windwp/nvim-autopairs",
    dependencies = {
      "hrsh7th/nvim-cmp"
    },
    event = { "InsertEnter" },
    config = function()
      require("plugins.config.nvim-autopairs")
    end
  },
}
