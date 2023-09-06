local neogit = require("neogit")

neogit.setup {
  signs = {
    -- { CLOSED, OPENED }
    hunk = { "", "" },
    item = { "", "" },
    section = { "", "" },
  },
  integrations = {
    telescope = true,
    diffview = true
  },
  mappings = {
    status = {
      ["l"] = false,
      ["L"] = "LogPopup"
    }
  }
}
