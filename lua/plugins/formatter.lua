local filetype = {}
local ft_table = {"c", "cpp", "python"}
local ft_supported = false

local global_formatters = {}

local function merge_table(tb1, tb2)
  for _, v in pairs(tb2) do table.insert(tb1, v) end
  return tb1
end

for _, ft in pairs(ft_table) do
  filetype[ft] = merge_table({}, global_formatters)
  if ft == vim.bo.filetype then ft_supported = true end
end
if not(ft_supported) then filetype[vim.bo.filetype] = merge_table({}, global_formatters) end

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
        args = {"-assume-filename="..vim.fn.bufname("%"), "-style='{IndentWidth: 4}'"},
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
        exe = vim.g.python3_host_prog.." -m isort",
        args = {"-"},
        stdin = true,
      }
    end,
    function()
      return {
        exe = vim.g.python3_host_prog.." -m black",
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
--if ft_supported then
  vim.api.nvim_exec([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost * FormatWrite
  augroup END
  ]], true)
--end
