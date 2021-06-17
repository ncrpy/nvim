require('formatter').setup({
  loggin = false,
  filetype = {
    python = {

      function()
        return {
          exe = vim.g.python3_host_prog.." -m isort",
          args = {"-"},
          stdin = true
        }
      end,
      function()
        return {
          exe = vim.g.python3_host_prog.." -m black",
          args = {"-"},
          stdin = true
        }
      end

    }
  }
})

vim.api.nvim_set_keymap('n', '<leader>F', ':Format<CR>', { noremap=true, silent=true })
