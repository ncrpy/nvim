vim.keymap.set(
  {'n'},
  '<leader>dc',
  '<cmd>lua require("dap").continue()<cr>',
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
  '<leader>di',
  '<cmd>lua require("dap").step_into()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>do',
  '<cmd>lua require("dap").step_out()<cr>',
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
  '<leader>dB',
  '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dp',
  '<cmd>lua require("dap").toggle(nil, nil, vim.fn.input("Log point message: "))<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dr',
  '<cmd>lua require("dap").repl.open()<cr>',
  { silent = true }
)
vim.keymap.set(
  {'n'},
  '<leader>dl',
  '<cmd>lua require("dap").run_last()<cr>',
  { silent = true }
)

vim.keymap.set(
  {'n'},
  '<leader>dt',
  '<cmd>lua require("dapui").toggle()<cr>',
  { silent = true }
)
