local Dap = function(source, opts)
  return function()
    require("dap")[source](table.unpack(opts or {}))
  end
end

return {
  {
    "<F5>",
    Dap("continue"),
  },
  {
    "<F17>", -- <S-F5>
    Dap("pause"),
  },
  {
    "<F29>", -- <C-F5>
    Dap("run_last"),
  },
  {
    "<F11>",
    Dap("step_into"),
  },
  {
    "<F23>", -- <S-F11>
    Dap("step_out"),
  },
  {
    "<F10>",
    Dap("step_over"),
  },
  {
    "<F22>", -- <S-F10>
    Dap("step_back"),
  },
  {
    "<F9>",
    Dap("toggle_breakpoint"),
  },
  {
    "<F21>", -- <S-F9>
    function()
      Dap("set_breakpoint", { nil, nil, vim.fn.input("Log Message: ") })()
    end,
  },
  {
    "<leader>dd",
    function()
      require("dapui").toggle({ reset = true })
    end,
  },
}
