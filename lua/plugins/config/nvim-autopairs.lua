local M = {}

M.opts = {}

M.setup = function(_, opts)

  local cmp_autopairs = require("nvim-autopairs.completion.cmp")
  local cmp = require("cmp")

  require("nvim-autopairs").setup(opts)
  cmp.event:on(
    "confirm_done",
    cmp_autopairs.on_confirm_done()
  )

end

return M
