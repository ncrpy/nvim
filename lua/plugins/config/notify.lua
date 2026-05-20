local M = {}

M.opts = {
  render = "compact",
}

M.setup = function(_, opts)
  local notify = require("notify")
  notify.setup(opts)
  vim.notify = notify

  vim.api.nvim_create_user_command("NotificationsPick", require("notify.integrations").pick, {})
end

return M
