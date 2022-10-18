vim.keymap.set(
  {'n'},
  '<F5>',
  '<cmd>set nocul<cr>|<cmd>lua require("dapui").open()<cr>|<cmd>set cul<cr>|<cmd>lua require("dap").continue()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<F6>',
  '<cmd>lua require("dap").pause()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<F11>',
  '<cmd>lua require("dap").step_into()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<F10>',
  '<cmd>lua require("dap").step_over()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<F12>',
  '<cmd>lua require("dap").step_out()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dr',
  '<cmd>lua require("dap").run_last()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dq',
  '<cmd>lua require("dap").terminate()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<F9>',
  '<cmd>lua require("dap").toggle_breakpoint()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>db',
  '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dp',
  '<cmd>lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dc',
  '<cmd>lua require("dap").reverse_continue()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>d',
  ':lua require("dap")',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dd',
  '<cmd>set nocul<cr>|<cmd>lua require("dapui").toggle()<cr>|<cmd>set cul<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>de',
  '<cmd>lua require("dapui").eval()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dr',
  '<cmd>lua require("dapui").float_element("repl")<cr>',
  {}
)

vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg='#f70067' })
vim.api.nvim_set_hl(0, 'DapLogPoint', { fg='#00f1f5' })
vim.api.nvim_set_hl(0, 'DapStopped', { fg='#a9ff68' })

vim.fn.sign_define('DapBreakpoint', { text='', texthl='DapBreakpoint', linehl='', numhl='' })
vim.fn.sign_define('DapBreakpointCondition', { text='ﳁ', texthl='DapBreakpoint', linehl='', numhl='' })
vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint', linehl='', numhl= '' })
vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPoint', linehl='', numhl= '' })
vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped', linehl='', numhl= '' })
