local M = {}

M.opts = function()

local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")

cmp.event:on(
  "confirm_done",
  cmp_autopairs.on_confirm_done()
)

return {}

end

return M
