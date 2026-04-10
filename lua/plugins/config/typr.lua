M = {}

M.opts = {
  on_attach = function(buf)
    vim.b[buf].completion = false
  end,
}

return M
