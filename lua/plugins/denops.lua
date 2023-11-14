local deno_enable = function()
  return vim.fn.executable("deno") == 1
end

local denops_register = function(plugin)
  if vim.fn["denops#server#status"]() == "running" then
    vim.fn["denops#plugin#register"](plugin, { mode = "skip" })
  end
end

return {
  {
    "vim-denops/denops.vim",
    enabled = deno_enable,
    version = false,  -- due to changes on Deno v1.36.2
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
  --     denops_register("example-minimal")
  --     vim.fn["denops#plugin#wait"]("example-minimal")
  --   end
  -- },

  {
    "vim-skk/skkeleton",
    enabled = deno_enable,
    dependencies = {
      "vim-denops/denops.vim",
      "delphinus/skkeleton_indicator.nvim"
    },
    keys = require("plugins.keymap.skkeleton"),
    config = function()
      denops_register("skkeleton")
      require("plugins.config.skkeleton")
    end
  }
}
