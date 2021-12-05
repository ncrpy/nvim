local filetype = {}
vim.g.formatter_filetype = {"c", "cpp", "lua", "python", "format-mode"}

local global_formatters = {}

local function merge_table(tb1, tb2)
  for _, v in pairs(tb2) do table.insert(tb1, v) end
  return tb1
end

for _, ft in pairs(vim.g.formatter_filetype) do
  filetype[ft] = merge_table({}, global_formatters)
end

--[[Template
for _, ft in pairs({}) do
  local formatters = {
    function()
      return {
        exe = "",
        args = {},
        stdin = true,
      }
    end
  }
  for __, func in pairs(formatters) do table.insert(filetype[ft], func) end
  merge_table({}, formatters)
end
]]

for _, ft in pairs({"c", "cpp"}) do
  local formatters = {
    function()
      return {
        exe = "clang-format",
        args = {
          "-assume-filename=" .. vim.fn.bufname("%"),
          "-style='{BasedOnStyle: Google, AllowShortFunctionsOnASingleLine: Inline, ColumnLimit: 0}'"
        },
        stdin = true
      }
    end
  }
  merge_table(filetype[ft], formatters)
end

for _, ft in pairs({"lua"}) do
  local formatters = {
    function()
      return {
        exe = "luafmt",
        args = {"--indent-count", 2, "--stdin"},
        stdin = true,
      }
    end
  }
  merge_table(filetype[ft], formatters)
end

for _, ft in pairs({"python"}) do
  local formatters = {
    function()
      return {
        exe = "isort",
        args = {"-"},
        stdin = true,
      }
    end,
    function()
      return {
        exe = "black",
        args = {"-"},
        stdin = true,
      }
    end
  }
  merge_table(filetype[ft], formatters)
end

require('formatter').setup({
  logging = false,
  filetype = filetype
})

vim.api.nvim_set_keymap('n', '<leader>F', ':Format<CR>', { noremap=true, silent=true })
vim.api.nvim_set_keymap('v', '<leader>F', ':Format<CR>', { noremap=true, silent=true })

--vim.api.nvim_exec([[
--  command! FormatToggle if &filetype=="format-mode" | filetype detect | else | setfiletype format-mode | endif
--  augroup FormatAutogroup
--    autocmd!
--    autocmd BufWritePost * if index(g:formatter_filetype, &filetype)>=0 | execute'FormatWrite' | endif
--  augroup END
--  ]], true)
