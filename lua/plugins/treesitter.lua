local utils = require("utils")

return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- version = false,
    build = function()
      local ok, install = pcall(require, "nvim-treesitter.install")
      return ok and install.update({ with_sync = false })
    end,
    event = { "BufReadPost", "BufNewFile" },
    opts = utils.wrap_opts("treesitter"),
    config = utils.wrap_setup("treesitter"),
  },
}
