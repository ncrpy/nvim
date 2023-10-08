local M = {}

M.opts = function()

  local formats = require("noice.config").defaults().cmdline.format

  for _, format in pairs(formats) do
    format.conceal = false
  end

  return {
    cmdline = {
      format = formats
    }
  }

end

M.setup = function(_, opts)

  require("noice").setup(opts)

  local ll_ok, lualine = pcall(require, "lualine")
  local status = require("noice").api.status

  if ll_ok then lualine.setup {
    sections = {
      lualine_x = {
        {
          status.message.get_hl,
          cond = status.message.has,
        },
        {
          status.command.get,
          cond = status.command.has,
          color = { fg = "#ff9e64" },
        },
        {
          status.search.get,
          cond = status.search.has,
          color = { fg = "#ff9e64" },
        },
      },
    },
  }
  end

  vim.api.nvim_create_autocmd("User", {
    group = "TelescopeLoaded",
    pattern = "TelescopeLoaded",
    callback = function()
      local ok, telescope = pcall(require, "telescope")
      if ok then telescope.load_extension("noice") end
    end
  })


end

return M
