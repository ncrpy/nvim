local actions = require('telescope.actions')

require('telescope').setup{
  defaults = {
    layout_config = {
      horizontal = {
	preview_width = 0.5,
      },
    },
    mappings = {
      n = {
        ["q"] = actions.close,
      }
    }
  }
}
