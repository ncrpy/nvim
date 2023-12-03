local M = {}

M.opts = {
  icons = {
    buffer_number = true,
  },
}

M.setup = function(_, opts)
  local group = vim.api.nvim_create_augroup("count_buffers", {})
  local barbar_setup = function()
    if #(vim.fn.getbufinfo({ buflisted = 1 })) > 1 then
      require("barbar").setup(opts)
      vim.api.nvim_del_augroup_by_id(group)
    end
  end

  vim.api.nvim_create_autocmd("BufEnter", {
    group = group,
    callback = barbar_setup,
  })

  barbar_setup()
end

return M
