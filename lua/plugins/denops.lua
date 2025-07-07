local deno_enable = function()
  return vim.fn.executable("deno") == 1
end

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
    keys = require("plugins.config.skkeleton").keys,
    config = function()
      require("plugins.config.skkeleton").setup()
    end,
  },
}
