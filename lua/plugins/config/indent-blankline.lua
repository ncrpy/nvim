local M = {}

local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

M.opts = {
  indent = {
    char = "▏",
  },
  scope = {
    highlight = highlight,
  },
}

M.setup = function(_, opts)
  local hooks = require("ibl.hooks")
  -- create the highlight groups in the highlight setup hook, so they are reset
  -- every time the colorscheme changes
  hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", { default = true, fg = "#E06C75" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { default = true, fg = "#E5C07B" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { default = true, fg = "#61AFEF" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { default = true, fg = "#D19A66" })
    vim.api.nvim_set_hl(0, "RainbowGreen", { default = true, fg = "#98C379" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { default = true, fg = "#C678DD" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { default = true, fg = "#56B6C2" })
  end)

  -- vim.g.rainbow_delimiters = { highlight = highlight }
  require("ibl").setup(opts)

  hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
end

return M
