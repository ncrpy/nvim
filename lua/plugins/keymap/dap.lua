local ok, dap = pcall(require, "dap")

return ok and {
  {
    "<F5>",
    dap.continue
  },
  {
    "<F17>",  -- <S-F5>
    dap.pause
  },
  {
    "<F29>",  -- <C-F5>
    dap.run_last
  },
  {
    "<F11>",
    dap.step_into
  },
  {
    "<F23>",  -- <S-F11>
    dap.step_out
  },
  {
    "<F10>",
    dap.step_over
  },
  {
    "<F22>",  -- <S-F10>
    dap.step_back
  },
  {
    "<F9>",
    dap.toggle_breakpoint
  },
  {
    "<F21>",  -- <S-F9>
    function() dap.set_breakpoint(vim.fn.input("Breakpoint condition: "), nil, vim.fn.input("Logpoint message: ")) end
  }
} or {}
