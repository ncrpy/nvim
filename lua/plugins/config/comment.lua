local M = {}

M.opts = function()

  return {
    pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()
  }

end

return M
