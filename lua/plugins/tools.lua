local utils = require("utils")
local keymap = require("plugins.keymap")

return {
  -- {
  --   "folke/snacks.nvim",
  --   priority = 1000,
  --   lazy = false,
  --   keys = require("plugins.keymap.snacks").keys,
  --   opts = require("plugins.keymap.snacks").opts,
  -- },

  {
    "ibhagwan/fzf-lua",
    version = false,
    enabled = utils.executable("fzf"),
    cmd = { "FzfLua" },
    keys = keymap.fzflua,
    opts = {},
  },

  {
    "nvim-tree/nvim-tree.lua",
    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    cmd = { "NvimTreeToggle" },
    keys = keymap.nvimtree,
    opts = utils.wrap_opts("nvim-tree"),
  },

  {
    "stevearc/quicker.nvim",
    ft = { "qf" },
    keys = keymap.quicker,
    opts = utils.wrap_opts(),
  },

  {
    "NeogitOrg/neogit",
    cmd = { "Neogit" },
    opts = utils.wrap_opts(),
  },

  {
    "rcarriga/nvim-dap-ui",
    version = false,
    dependencies = "nvim-neotest/nvim-nio",
    opts = utils.wrap_opts("dap"),
  },

  {
    "mfussenegger/nvim-dap",
    keys = keymap.dap,
    config = utils.wrap_setup("dap"),
  },

  {
    "akinsho/toggleterm.nvim",
    cmd = { "ToggleTerm" },
    keys = keymap.toggleterm,
    opts = utils.wrap_opts(),
    config = utils.wrap_setup(),
  },

  {
    "stevearc/aerial.nvim",
    cmd = { "AerialToggle", "AerialNavToggle", "AerialInfo" },
    keys = keymap.aerial,
    opts = utils.wrap_opts(),
    -- config = utils.wrap_setup(),
  },

  {
    "stevearc/conform.nvim",
    cmd = { "ConformInfo", "Format", "FormatEnable" },
    keys = keymap.conform,
    opts = utils.wrap_opts(),
    config = utils.wrap_setup(),
  },

  {
    "kylechui/nvim-surround",
    version = "^4.0.0",
    event = { "BufReadPost", "BufNewFile" },
  },

  {
    "NMAC427/guess-indent.nvim",
    event = { "BufReadPost", "BufNewFile" },
    opts = utils.wrap_opts(),
  },

  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    cmd = { "Typr", "TyprStats" },
    opts = utils.wrap_opts(),
  },
}
