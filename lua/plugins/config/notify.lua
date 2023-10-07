local M = {}

M.opts = function()

vim.api.nvim_create_autocmd("User", {
  group = "TelescopeLoaded",
  pattern = "TelescopeLoaded",
  callback = function()
    local ok, telescope = pcall(require, "telescope")
    if ok then telescope.load_extension("notify") end
  end
})

vim.notify = require("notify")

return {
  render = "compact"
}

end

return M
