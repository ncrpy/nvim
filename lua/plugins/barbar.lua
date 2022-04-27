local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<leader>bN', ':BufferPrevious<CR>', opts)
map('n', '<leader>bn', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<leader>b<', ':BufferMovePrevious<CR>', opts)
map('n', '<leader>b>', ' :BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<leader>b1', ':BufferGoto 1<CR>', opts)
map('n', '<leader>b2', ':BufferGoto 2<CR>', opts)
map('n', '<leader>b3', ':BufferGoto 3<CR>', opts)
map('n', '<leader>b4', ':BufferGoto 4<CR>', opts)
map('n', '<leader>b5', ':BufferGoto 5<CR>', opts)
map('n', '<leader>b6', ':BufferGoto 6<CR>', opts)
map('n', '<leader>b7', ':BufferGoto 7<CR>', opts)
map('n', '<leader>b8', ':BufferGoto 8<CR>', opts)
map('n', '<leader>b9', ':BufferGoto 9<CR>', opts)
map('n', '<leader>b0', ':BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<leader>bp', ':BufferPin<CR>', opts)
-- Close buffer
map('n', '<leader>bc', ':BufferClose<CR>', opts)
map('n', '<leader>bd', ':BufferDelete<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout<CR>
map('n', '<leader>bw', ':BufferWipeout<CR>', opts)
-- Close commands
--                 :BufferCloseAllButCurrent<CR>
--                 :BufferCloseAllButPinned<CR>
--                 :BufferCloseBuffersLeft<CR>
--                 :BufferCloseBuffersRight<CR>
map('n', '<leader>bo', ':BufferCloseAllButCurrent<CR>', opts)
map('n', '<leader>bi', ':BufferCloseAllButPinned<CR>', opts)
-- Magic buffer-picking mode
map('n', '<leader>bs', ':BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<leader>brb', ':BufferOrderByBufferNumber<CR>', opts)
map('n', '<leader>brd', ':BufferOrderByDirectory<CR>', opts)
map('n', '<leader>brl', ':BufferOrderByLanguage<CR>', opts)
map('n', '<leader>brw', ':BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used


-- Set barbar's options
vim.g.bufferline = {
  -- Enable/disable animations
  animation = true,

  -- Enable/disable auto-hiding the tab bar when there is a single buffer
  auto_hide = false,

  -- Enable/disable current/total tabpages indicator (top right corner)
  tabpages = true,

  -- Enable/disable close button
  closable = true,

  -- Enables/disable clickable tabs
  --  - left-click: go to buffer
  --  - middle-click: delete buffer
  clickable = true,

  -- Excludes buffers from the tabline
  exclude_ft = {},
  exclude_name = {},

  -- Enable/disable icons
  -- if set to 'numbers', will show buffer index in the tabline
  -- if set to 'both', will show buffer index and icons in the tabline
  icons = 'both',

  -- If set, the icon color will follow its corresponding buffer
  -- highlight group. By default, the Buffer*Icon group is linked to the
  -- Buffer* group (see Highlighting below). Otherwise, it will take its
  -- default value as defined by devicons.
  icon_custom_colors = false,

  -- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',

  -- If true, new buffers will be inserted at the start/end of the list.
  -- Default is to insert after current buffer.
  insert_at_end = false,
  insert_at_start = false,

  -- Sets the maximum padding width with which to surround each tab
  maximum_padding = 1,

  -- Sets the maximum buffer name length.
  maximum_length = 30,

  -- If set, the letters for each buffer in buffer-pick mode will be
  -- assigned based on their name. Otherwise or in case all letters are
  -- already assigned, the behavior is to assign letters in order of
  -- usability (see order below)
  semantic_letters = true,

  -- New buffer letters are assigned in this order. This order is
  -- optimal for the qwerty keyboard layout but might need adjustement
  -- for other layouts.
  letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

  -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
  -- where X is the buffer number. But only a static string is accepted here.
  no_name_title = nil,
}

vim.cmd([[
augroup transparent_barbar_bg
  autocmd!
  autocmd ColorScheme * highlight BufferCurrent guibg=none
  autocmd ColorScheme * highlight BufferCurrentIndex guibg=none
  autocmd ColorScheme * highlight BufferCurrentMod guibg=none
  autocmd ColorScheme * highlight BufferCurrentSign guibg=none
  autocmd ColorScheme * highlight BufferCurrentTarget guibg=none
augroup END
]])
