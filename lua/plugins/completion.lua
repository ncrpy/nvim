return {
  {
    "hrsh7th/nvim-cmp",
    version = false,
    dependencies = {
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "saadparwaiz1/cmp_luasnip", dependencies = "L3MON4D3/LuaSnip" },
--       { "zbirenbaum/copilot-cmp", dependencies = "zbirenbaum/copilot.lua", config = true },
      { "onsails/lspkind.nvim" }
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
    config = function()
      require("plugins.config.luasnip")
    end,
  },

  {
    "zbirenbaum/copilot.lua",
    enabled = function()
      return vim.fn.executable("node") == 1
    end,
    cmd = { "Copilot" },
    event = vim.fn.filereadable(vim.fn.expand("$XDG_CONFIG_HOME/github-copilot/hosts.json")) == 1 and { "InsertEnter" },
    config = function()
      require("plugins.config.copilot")
    end
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

  {
    "h-hg/fcitx.nvim",
    enabled = function()
      return vim.fn.executable("fcitx5-remote") == 1
    end,
    event = { "InsertEnter" }
  },

  {
    "vim-skk/skkeleton",
    enabled = function()
      return vim.fn.executable("deno") == 1
    end,
    dependencies = {
      { "vim-denops/denops.vim" , version = false },
      { "delphinus/skkeleton_indicator.nvim", config = nil }
    },
    keys = function()
      return require("plugins.keymap.skkeleton")
    end,
    config = function()
      require("plugins.config.skkeleton")
    end,
  }
}
