local actions = require("telescope.actions")

require("telescope").setup {
  defaults = {
    layout_config = {
      horizontal = {
        preview_width = 0.4
      }
    },
    sorting_strategy = "ascending",
    mappings = {
      n = {
        ["q"] = actions.close
      }
    }
  }
}
