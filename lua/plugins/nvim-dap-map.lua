vim.keymap.set(
  {'n'},
  '<leader>dp',
  '<cmd>set nocul<cr>|<cmd>lua require("dapui").open()<cr>|<cmd>set cul<cr>|<cmd>lua require("dap").continue()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>di',
  '<cmd>lua require("dap").step_into()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>do',
  '<cmd>lua require("dap").step_over()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>du',
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
  '<leader>db',
  '<cmd>lua require("dap").toggle_breakpoint()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dc',
  '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dl',
  '<cmd>lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<cr>',
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
