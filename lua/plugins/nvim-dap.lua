local dap = require('dap')

dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    -- CHANGE THIS to your path!
    command = vim.fn.stdpath('data') .. '/mason/bin/codelldb',
    args = {"--port", "${port}"},

    -- On windows you may have to uncomment this:
    -- detached = false,
  }
}

dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
--    args = function()
--      local arguments = vim.fn.input('Program arguments: ')
--      return vim.fn.split(arguments, " ", true)
--    end,
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
  },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

--require("nvim-dap-virtual-text").setup()
