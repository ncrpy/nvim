require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained",
    ignore_installed = {},
    highlight = {
        enable = true,
        disable = {},
    },
    rainbow = {
        enable = false,
        extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
        max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
    }
}

--  for non-ts rainbow plugin; I don't know why it works :(
local hlmap = vim.treesitter.highlighter.hl_map
hlmap.error = ""
hlmap["punctuation.delimiter"] = "Delimiter"
hlmap["punctuation.bracket"] = ""
