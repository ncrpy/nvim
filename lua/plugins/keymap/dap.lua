return {
  {
    "<F5>",
    "<Cmd>lua require'dap'.continue()<CR>"
  },
  {
    "<F17>",  -- <S-F5>
    "<Cmd>lua require'dap'.pause()<CR>"
  },
  {
    "<F29>",  -- <C-F5>
    "<Cmd>lua require'dap'.run_last()<CR>"
  },
  {
    "<F11>",
    "<Cmd>lua require'dap'.step_into()<CR>"
  },
  {
    "<F23>",  -- <S-F11>
    "<Cmd>lua require'dap'.step_out()<CR>"
  },
  {
    "<F10>",
    "<Cmd>lua require'dap'.step_over()<CR>"
  },
  {
    "<F22>",  -- <S-F10>
    "<Cmd>lua require'dap'.step_back()<CR>"
  },
  {
    "<F9>",
    "<Cmd>lua require'dap'.toggle_breakpoint()<CR>"
  },
  {
    "<F21>",  -- <S-F9>
    "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Message: '))<CR>"
  },
  {
    "<leader>dd",
    "<Cmd>lua require'dapui'.toggle({ reset = true })<CR>"
  },
}
