local neogit = require("neogit")

neogit.setup {
  signs = {
    -- { CLOSED, OPENED }
    hunk = { "", "" },
    item = { "", "" },
    section = { "", "" },
  },
  mappings = {
    status = {
      ["l"] = false,
      ["L"] = "LogPopup"
    }
  }
}
