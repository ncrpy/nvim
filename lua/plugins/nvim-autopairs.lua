local npairs = require('nvim-autopairs')

npairs.setup({
  check_ts = true,
})

vim.api.nvim_set_keymap('i', '<C-h>', '<BS>', {noremap = false})
