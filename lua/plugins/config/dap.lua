local M = {}

M.opts = {
  controls = {
    element = "repl",
    enabled = true,
    icons = {
      disconnect = "",
      pause = "",
      play = "",
      run_last = "",
      step_back = "",
      step_into = "",
      step_out = "",
      step_over = "",
      terminate = "",
    },
  },
  layouts = {
    {
      elements = {
        {
          id = "scopes",
          size = 0.26,
        },
        {
          id = "breakpoints",
          size = 0.24,
        },
        {
          id = "stacks",
          size = 0.24,
        },
        {
          id = "watches",
          size = 0.26,
        },
      },
      position = "left",
      size = 0.25,
    },
    {
      elements = {
        {
          id = "repl",
          size = 0.5,
        },
        {
          id = "console",
          size = 0.5,
        },
      },
      position = "bottom",
      size = 0.25,
    },
  },
}

M.setup = function(_, opts)
  local dap, dapui = require("dap"), require("dapui")

  dapui.setup(opts)

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end
  -- dap.listeners.before.event_terminated["dapui_config"] = function()
  --   dapui.close()
  -- end
  -- dap.listeners.before.event_exited["dapui_config"] = function()
  --   dapui.close()
  -- end

  dap.adapters.codelldb = {
    type = "server",
    port = "${port}",
    executable = {
      -- CHANGE THIS to your path!
      command = vim.fn.stdpath("data") .. "/mason/bin/codelldb",
      args = { "--port", "${port}" },

      -- On windows you may have to uncomment this:
      -- detached = false,
    },
  }

  dap.configurations.cpp = {
    {
      name = "Launch file",
      type = "codelldb",
      request = "launch",
      -- args = function()
      --   local arguments = vim.fn.input("Program arguments: ")
      --   return vim.fn.split(arguments, " ", true)
      -- end,
      program = function()
        local self = coroutine.running()
        vim.ui.input({
          prompt = "Path to executable: ",
          default = vim.fn.getcwd() .. "/",
          completion = "file",
        }, function(input)
          coroutine.resume(self, input)
        end)
        return coroutine.yield()
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
    },
  }

  dap.configurations.c = dap.configurations.cpp
  dap.configurations.rust = dap.configurations.cpp

  vim.api.nvim_set_hl(0, "DapBreakpoint", { fg = "#f70067" })
  vim.api.nvim_set_hl(0, "DapLogPoint", { fg = "#00f1f5" })
  vim.api.nvim_set_hl(0, "DapStopped", { fg = "#a9ff68" })

  vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DapBreakpoint", linehl = "", numhl = "" })
  vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DapBreakpoint", linehl = "", numhl = "" })
  vim.fn.sign_define("DapBreakpointRejected", { text = "", texthl = "DapBreakpoint", linehl = "", numhl = "" })
  vim.fn.sign_define("DapLogPoint", { text = "", texthl = "DapLogPoint", linehl = "", numhl = "" })
  vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped", linehl = "", numhl = "" })

  local function float_opts()
    return {
      height = math.floor(vim.opt.lines:get() * 0.8),
      width = math.floor(vim.opt.columns:get() * 0.8),
      enter = true,
      position = "center",
    }
  end

  vim.keymap.set("n", "<leader>ds", function()
    dapui.float_element("scopes", float_opts())
  end)
  vim.keymap.set("n", "<leader>db", function()
    dapui.float_element("breakpoints", float_opts())
  end)
  vim.keymap.set("n", "<leader>df", function()
    dapui.float_element("stacks", float_opts())
  end)
  vim.keymap.set("n", "<leader>dr", function()
    dapui.float_element("repl", float_opts())
  end)
  vim.keymap.set("n", "<leader>d<Space>", function()
    dapui.float_element(nil, float_opts())
  end)
end

M.keys = {
  {
    "<F5>",
    "<Cmd>lua require'dap'.continue()<CR>",
  },
  {
    "<F17>", -- <S-F5>
    "<Cmd>lua require'dap'.pause()<CR>",
  },
  {
    "<F29>", -- <C-F5>
    "<Cmd>lua require'dap'.run_last()<CR>",
  },
  {
    "<F11>",
    "<Cmd>lua require'dap'.step_into()<CR>",
  },
  {
    "<F23>", -- <S-F11>
    "<Cmd>lua require'dap'.step_out()<CR>",
  },
  {
    "<F10>",
    "<Cmd>lua require'dap'.step_over()<CR>",
  },
  {
    "<F22>", -- <S-F10>
    "<Cmd>lua require'dap'.step_back()<CR>",
  },
  {
    "<F9>",
    "<Cmd>lua require'dap'.toggle_breakpoint()<CR>",
  },
  {
    "<F21>", -- <S-F9>
    "<Cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Message: '))<CR>",
  },
  {
    "<leader>dd",
    "<Cmd>lua require'dapui'.toggle({ reset = true })<CR>",
  },
}

return M
