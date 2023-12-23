local M = {}

M.opts = {
  signs = {
    -- { CLOSED, OPENED }
    hunk = { "", "" },
    item = { "", "" },
    section = { "", "" },
  },
  mappings = {
    popup = {
      ["l"] = false,
      ["L"] = "LogPopup",
    },
  },
}

return M
