local M = {}

M.opts = {
  render = "compact",
}

M.setup = function(_, opts)
  local notify = require("notify")

  vim.api.nvim_create_autocmd("User", {
    group = "TelescopeLoaded",
    pattern = "TelescopeLoaded",
    callback = function()
      local ok, telescope = pcall(require, "telescope")
      if ok then
        telescope.load_extension("notify")
      end
    end,
  })

  notify.setup(opts)

  vim.notify = notify

  -- Redirect print to nvim-notify
  -- Print = _G.print
  -- print = function(...)
  --   local print_safe_args = {}
  --   local _ = { ... }
  --   for i = 1, #_ do
  --     table.insert(print_safe_args, tostring(_[i]))
  --   end
  --   notify(table.concat(print_safe_args, " "), "info")
  -- end
end

return M
