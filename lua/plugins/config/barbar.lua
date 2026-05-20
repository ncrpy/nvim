local M = {}

M.opts = {
  icons = {
    buffer_number = true,
  },
}

M.setup = function(_, opts)
  local group = vim.api.nvim_create_augroup("count_buffers", {})
  local barbar_setup = function()
    local count = 0
    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
      if vim.api.nvim_get_option_value("buflisted", { buf = buf }) then
        count = count + 1
        if count > 1 then
          require("barbar").setup(opts)
          vim.api.nvim_del_augroup_by_id(group)
          return true
        end
      end
    end
  end

  vim.api.nvim_create_autocmd("BufAdd", {
    group = group,
    callback = barbar_setup,
  })

  vim.api.nvim_exec_autocmds("BufAdd", { group = group })
end

return M
