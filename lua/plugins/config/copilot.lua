local M = {}

M.opts = {
  panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
      jump_prev = "<C-p>",
      jump_next = "<C-n>",
      accept = "ga",
      refresh = "gr",
      open = "<C-b>",
    },
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    trigger_on_accept = false,
    keymap = {
      accept = "<Tab>",
      accept_word = false,
      accept_line = false,
      next = false,
      prev = false,
      dismiss = false,
    },
  },
}

return M
