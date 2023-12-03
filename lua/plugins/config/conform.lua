local M = {}

M.keys = {
  {
    "<leader>m",
    "<Cmd>Format<CR>",
    mode = "",
    { desc = "Format buffer" },
  },
}

M.opts = {
  -- Define your formatters
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "isort", "black" },
    -- javascript = { { "prettierd", "prettier" } },
    -- sh = { "shfmt" },
    c = { "clang_format" },
    cpp = { "clang_format" },
  },
  -- Set up format-on-save
  format_on_save = function(bufnr)
    -- Disable with a global or buffer-local variable
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end
    return { timeout_ms = 500, lsp_fallback = true }
  end,
  -- Customize formatters
  formatters = {
    -- shfmt = {
    --   prepend_args = { "-i", "2" },
    -- },
  },
}

M.setup = function(_, opts)
  require("conform").setup(opts)

  vim.api.nvim_create_user_command("Format", function(args)
    local range = nil
    if args.count ~= -1 then
      local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
      range = {
        start = { args.line1, 0 },
        ["end"] = { args.line2, end_line:len() },
      }
    end
    require("conform").format({ async = true, lsp_fallback = true, range = range })
  end, { range = true })
  vim.api.nvim_create_user_command("FormatDisable", function(args)
    if args.bang then
      -- FormatDisable! will disable formatting just for this buffer
      vim.b.disable_autoformat = true
    else
      vim.g.disable_autoformat = true
    end
  end, {
    desc = "Disable autoformat-on-save",
    bang = true,
  })
  vim.api.nvim_create_user_command("FormatEnable", function()
    vim.b.disable_autoformat = false
    vim.g.disable_autoformat = false
  end, {
    desc = "Enable autoformat-on-save",
  })
end

return M
