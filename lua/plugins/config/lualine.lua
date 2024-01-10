local M = {}

M.opts = {
  options = {
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    globalstatus = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = {
      { "b:gitsigns_head", icon = "" },
    },
    lualine_c = {
      {
        "diff",
        colored = true, -- Displays a colored diff status if set to true
        --  diff_color = {
        --    added    = 'GitSignsAdd',
        --    modified = 'GitSignsChange',
        --    removed  = 'GitSignsDelete',
        --  },
        symbols = { added = " ", modified = " ", removed = " " }, -- Changes the symbols used by the diff.
        source = function()
          local gitsigns = vim.b.gitsigns_status_dict
          if gitsigns then
            return {
              added = gitsigns.added,
              modified = gitsigns.changed,
              removed = gitsigns.removed,
            }
          end
        end,
      },
      {
        "diagnostics",
        -- Table of diagnostic sources, available sources are:
        --   'nvim_lsp', 'nvim_diagnostic', 'coc', 'ale', 'vim_lsp'.
        -- or a function that returns a table as such:
        --   { error=error_cnt, warn=warn_cnt, info=info_cnt, hint=hint_cnt }
        sources = { "nvim_lsp" },

        -- Displays diagnostics for the defined severity types
        sections = { "error", "warn", "info", "hint" },

        --  diagnostics_color = {
        --    -- Same values as the general color option can be used here.
        --    error = 'DiagnosticError', -- Changes diagnostics' error color.
        --    warn  = 'DiagnosticWarn',  -- Changes diagnostics' warn color.
        --    info  = 'DiagnosticInfo',  -- Changes diagnostics' info color.
        --    hint  = 'DiagnosticHint',  -- Changes diagnostics' hint color.
        --  },
        symbols = { error = " ", warn = " ", info = " ", hint = " " },
        colored = true, -- Displays diagnostics status in color if set to true.
        update_in_insert = false, -- Update diagnostics in insert mode.
        always_visible = false, -- Show diagnostics even if there are none.
      },
      {
        "filename",
        path = 1,
      },
    },
    lualine_x = {
      {
        require("lazy.status").updates,
        cond = require("lazy.status").has_updates,
        color = { fg = "#ff9e64" },
      },
      { "encoding" },
      {
        "fileformat",
        icons_enabled = true,
        symbols = {
          unix = "LF",
          dos = "CRLF",
          mac = "CR",
        },
      },
    },
    lualine_y = { "filetype" },
    lualine_z = {
      {
        "progress",
        padding = { left = 1, right = 1 },
      },
      {
        "location",
        padding = { left = 0, right = 0 },
      },
    },
  },
  extensions = {
    "lazy",
    "nvim-tree",
    "trouble",
  },
}

return M
