require "nvim-treesitter.configs".setup {
  ensure_installed = "all",
  ignore_install = {"elixir"},
  highlight = {
    enable = true,
    disable = {"latex"}
  },
  rainbow = {
    enable = true,
    extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than 1000 lines, int
    colors = {
      "#f92672",
      "#ef5939",
      "#e6db74",
      "#a6e22e",
      "#66d9ef",
      "#ae81ff",
      "#7070f0"
    }
  },
  matchup = {
    enable = true,
  }
}

--  for non-ts rainbow plugin; I don't know why it works :P
-- require "nvim-treesitter.highlight"
-- local hlmap = vim.treesitter.highlighter.hl_map
-- hlmap.error = nil
-- hlmap["punctuation.delimiter"] = "Delimiter"
-- hlmap["punctuation.bracket"] = nil
