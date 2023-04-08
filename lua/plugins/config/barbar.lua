-- Set barbar's options
return {
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

-- barbar.nvim: `icons.filetype.enabled` is set to `true` but `nvim-dev-icons` was not found.
-- barbar.nvim: icons have been disabled. Set `icons.filetype.enabled` to `false` or install `nvim-dev-icons`to disable this message.
-- The barbar.nvim option `icons = "both"` is deprecated, use `icons = { buffer_index = true, filetype = { enabled = true } }` instead. See :h deprecated
-- This function will be removed in barbar.nvim version 2.0.0
-- stack traceback:
--         .../.local/share/nvim/lazy/barbar.nvim/lua/barbar/utils.lua:134: in function 'deprecate'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/config.lua:192: in function 'setup'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/events.lua:330: in function 'on_option_changed'
--         .../ncrpy/.local/share/nvim/lazy/barbar.nvim/lua/barbar.lua:208: in function 'setup'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:330: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:328>
--         [C]: in function 'xpcall'
--         .../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:110: in function 'try'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:338: in function 'config'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:306: in function '_load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:180: in function 'load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:115: in function 'startup'
--         ...ncrpy/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:85: in function 'setup'
--         /home/ncrpy/.config/nvim/lua/core/init.lua:16: in main chunk
--         [C]: in function 'require'
--         /home/ncrpy/.config/nvim/init.lua:1: in main chunk
-- The barbar.nvim option `icon_separator_inactive` is deprecated, use `icons.inactive.separator.left` instead. See :h deprecated
-- This function will be removed in barbar.nvim version 2.0.0
-- stack traceback:
--         .../.local/share/nvim/lazy/barbar.nvim/lua/barbar/utils.lua:134: in function 'deprecate'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/config.lua:209: in function 'setup'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/events.lua:330: in function 'on_option_changed'
--         .../ncrpy/.local/share/nvim/lazy/barbar.nvim/lua/barbar.lua:208: in function 'setup'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:330: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:328>
--         [C]: in function 'xpcall'
--         .../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:110: in function 'try'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:338: in function 'config'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:306: in function '_load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:180: in function 'load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:115: in function 'startup'
--         ...ncrpy/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:85: in function 'setup'
--         /home/ncrpy/.config/nvim/lua/core/init.lua:16: in main chunk
--         [C]: in function 'require'
--         /home/ncrpy/.config/nvim/init.lua:1: in main chunk
-- The barbar.nvim option `icon_close_tab` is deprecated, use `icons.button` instead. See :h deprecated
-- This function will be removed in barbar.nvim version 2.0.0
-- stack traceback:
--         .../.local/share/nvim/lazy/barbar.nvim/lua/barbar/utils.lua:134: in function 'deprecate'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/config.lua:209: in function 'setup'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/events.lua:330: in function 'on_option_changed'
--         .../ncrpy/.local/share/nvim/lazy/barbar.nvim/lua/barbar.lua:208: in function 'setup'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:330: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:328>
--         [C]: in function 'xpcall'
--         .../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:110: in function 'try'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:338: in function 'config'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:306: in function '_load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:180: in function 'load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:115: in function 'startup'
--         ...ncrpy/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:85: in function 'setup'
--         /home/ncrpy/.config/nvim/lua/core/init.lua:16: in main chunk
--         [C]: in function 'require'
--         /home/ncrpy/.config/nvim/init.lua:1: in main chunk
-- The barbar.nvim option `icon_close_tab_modified` is deprecated, use `icons.modified.button` instead. See :h deprecated
-- This function will be removed in barbar.nvim version 2.0.0
-- stack traceback:
--         .../.local/share/nvim/lazy/barbar.nvim/lua/barbar/utils.lua:134: in function 'deprecate'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/config.lua:209: in function 'setup'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/events.lua:330: in function 'on_option_changed'
--         .../ncrpy/.local/share/nvim/lazy/barbar.nvim/lua/barbar.lua:208: in function 'setup'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:330: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:328>
--         [C]: in function 'xpcall'
--         .../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:110: in function 'try'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:338: in function 'config'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:306: in function '_load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:180: in function 'load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:115: in function 'startup'
--         ...ncrpy/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:85: in function 'setup'
--         /home/ncrpy/.config/nvim/lua/core/init.lua:16: in main chunk
--         [C]: in function 'require'
--         /home/ncrpy/.config/nvim/init.lua:1: in main chunk
-- The barbar.nvim option `icon_pinned` is deprecated, use `icons.pinned.button` instead. See :h deprecated
-- This function will be removed in barbar.nvim version 2.0.0
-- stack traceback:
--         .../.local/share/nvim/lazy/barbar.nvim/lua/barbar/utils.lua:134: in function 'deprecate'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/config.lua:209: in function 'setup'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/events.lua:330: in function 'on_option_changed'
--         .../ncrpy/.local/share/nvim/lazy/barbar.nvim/lua/barbar.lua:208: in function 'setup'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:330: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:328>
--         [C]: in function 'xpcall'
--         .../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:110: in function 'try'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:338: in function 'config'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:306: in function '_load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:180: in function 'load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:115: in function 'startup'
--         ...ncrpy/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:85: in function 'setup'
--         /home/ncrpy/.config/nvim/lua/core/init.lua:16: in main chunk
--         [C]: in function 'require'
--         /home/ncrpy/.config/nvim/init.lua:1: in main chunk
-- The barbar.nvim option `icon_separator_active` is deprecated, use `icons.separator.left` instead. See :h deprecated
-- This function will be removed in barbar.nvim version 2.0.0
-- stack traceback:
--         .../.local/share/nvim/lazy/barbar.nvim/lua/barbar/utils.lua:134: in function 'deprecate'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/config.lua:209: in function 'setup'
--         ....local/share/nvim/lazy/barbar.nvim/lua/barbar/events.lua:330: in function 'on_option_changed'
--         .../ncrpy/.local/share/nvim/lazy/barbar.nvim/lua/barbar.lua:208: in function 'setup'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:330: in function <...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:328>
--         [C]: in function 'xpcall'
--         .../.local/share/nvim/lazy/lazy.nvim/lua/lazy/core/util.lua:110: in function 'try'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:338: in function 'config'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:306: in function '_load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:180: in function 'load'
--         ...local/share/nvim/lazy/lazy.nvim/lua/lazy/core/loader.lua:115: in function 'startup'
--         ...ncrpy/.local/share/nvim/lazy/lazy.nvim/lua/lazy/init.lua:85: in function 'setup'
--         /home/ncrpy/.config/nvim/lua/core/init.lua:16: in main chunk
--         [C]: in function 'require'
--         /home/ncrpy/.config/nvim/init.lua:1: in main chunk
