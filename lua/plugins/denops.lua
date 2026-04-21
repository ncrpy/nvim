local utils = require("utils")
local deno_enable = utils.executable("deno")

return {
  {
    "vim-denops/denops.vim",
    enabled = deno_enable,
    -- init = function()
    --   vim.g["denops#debug"] = true
    -- end
  },

  -- {
  --   "vim-denops/denops-helloworld.vim",
  --   enabled = deno_enable,
  --   dependencies = { "vim-denops/denops.vim" },
  --   cmd = { "DenopsHello" },
  --   config = function()
  --     vim.fn["denops#plugin#wait"]("example-minimal")
  --   end
  -- },

  {
    "vim-skk/skkeleton",
    enabled = deno_enable,
    dependencies = {
      "vim-denops/denops.vim",
      {
        "delphinus/skkeleton_indicator.nvim",
        branch = "v2",
      },
    },
    keys = require("plugins.keymap").skkeleton,
    config = utils.wrap_setup(),
  },
}
