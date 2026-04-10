local M = {}

M.opts = {
  render = "compact",
}

M.setup = function(_, opts)
  local notify = require("notify")
  notify.setup(opts)
  vim.notify = notify
end

return M
