require("copilot").setup {
  panel = { -- no config options yet
    enabled = true,
  },
  suggestion = {
    enabled = true,
    auto_trigger = true,
    debounce = 75,
    keymap = {
     accept = "<C-y>",
     next = "<C-n>",
     prev = "<C-p>",
     dismiss = "<C-]>"
    }
  },
  ft_disable = {},
  copilot_node_command = 'node', -- Node version must be < 18
  plugin_manager_path = os.getenv("XDG_CACHE_HOME") .. "/dein/repos/github.com/zbirenbaum",
  server_opts_overrides = {}
}

require("copilot_cmp").setup {
  method = "getCompletionsCycling",
  force_autofmt = false,
  clear_after_cursor = false,
  formatters = {
    label = require("copilot_cmp.format").format_label_text,
    insert_text = require("copilot_cmp.format").format_insert_text,
    preview = require("copilot_cmp.format").deindent
  }
}
