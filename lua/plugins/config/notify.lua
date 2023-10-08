local M = {}

M.opts = {
  render = "compact"
}

M.setup = function(_, opts)

  require("notify").setup(opts)

  vim.api.nvim_create_autocmd("User", {
    group = "TelescopeLoaded",
    pattern = "TelescopeLoaded",
    callback = function()
      local ok, telescope = pcall(require, "telescope")
      if ok then telescope.load_extension("notify") end
    end
  })

  vim.notify = require("notify")

end

return M
