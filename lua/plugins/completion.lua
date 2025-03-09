return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "saadparwaiz1/cmp_luasnip", dependencies = "L3MON4D3/LuaSnip" },
      -- { "zbirenbaum/copilot-cmp", dependencies = "zbirenbaum/copilot.lua", opts = {} },
      { "onsails/lspkind.nvim" },
    },
    event = { "InsertEnter" },
    opts = require("plugins.config.cmp").opts,
    config = require("plugins.config.cmp").setup,
  },

  {
    "L3MON4D3/LuaSnip",
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
    config = require("plugins.config.luasnip").setup,
  },

  {
    "windwp/nvim-autopairs",
    dependencies = {
      "hrsh7th/nvim-cmp",
    },
    event = { "InsertEnter" },
    opts = require("plugins.config.nvim-autopairs").opts,
    config = require("plugins.config.nvim-autopairs").setup,
  },

  {
    "zbirenbaum/copilot.lua",
    enabled = function()
      return vim.fn.executable("node") == 1
    end,
    cmd = { "Copilot" },
    event = vim.fn.filereadable(vim.fn.expand("$XDG_CONFIG_HOME/github-copilot/hosts.json")) == 1 and { "InsertEnter" }, -- for first auth
    opts = require("plugins.config.copilot").opts,
  },

  {
    "h-hg/fcitx.nvim",
    enabled = function()
      return vim.fn.executable("fcitx5-remote") == 1
    end,
    event = { "InsertEnter" },
  },
}
