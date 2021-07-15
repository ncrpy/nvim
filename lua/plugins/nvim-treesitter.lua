require "nvim-treesitter.configs".setup {
  ensure_installed = "maintained",
  ignore_installed = {},
  highlight = {
    enable = true,
    disable = {"latex"}
  }
  --  rainbow = {
  --    enable = false,
  --    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
  --    max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  --    colors = {
  --      "#ef5939",
  --      "#66d9ef",
  --      "#f92672",
  --      "#e6db74",
  --      "#ae81ff",
  --      "#fd971f",
  --      "#a6e22e"
  --    }
  --  }
}

--  for non-ts rainbow plugin; I don't know why it works :P
require "nvim-treesitter.highlight"
local hlmap = vim.treesitter.highlighter.hl_map
hlmap.error = nil
hlmap["punctuation.delimiter"] = "Delimiter"
hlmap["punctuation.bracket"] = nil
