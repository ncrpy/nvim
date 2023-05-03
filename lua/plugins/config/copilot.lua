require("copilot").setup {
  panel = {
    enabled = true,
    auto_refresh = true,
    keymap = {
      jump_prev = "<C-p>",
      jump_next = "<C-n>",
      accept = "<CR>",
      refresh = false,
      open = "<C-b>"
    }
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    keymap = {
      accept = false,
      accept_word = false,
      accept_line = false,
      next = false,
      prev = false,
      dismiss = false
    }
  }
}
