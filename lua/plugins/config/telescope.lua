local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

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
        ["q"] = actions.close,
        ["<C-t>"] = trouble.open_with_trouble
      },
      i = {
        ["<C-t>"] = trouble.open_with_trouble
      }
    }
  }
}
