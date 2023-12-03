local M = {}

M.opts = {
  signs = {
    -- { CLOSED, OPENED }
    hunk = { "", "" },
    item = { "", "" },
    section = { "", "" },
  },
  mappings = {
    status = {
      ["l"] = false,
      ["L"] = "LogPopup",
    },
  },
}

return M
