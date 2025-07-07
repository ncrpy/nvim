local M = {}

M.setup = function(_, opts)
  require("mason-lspconfig").setup(opts)

  vim.diagnostic.config({
    signs = {
      text = {
        [vim.diagnostic.severity.ERROR] = "",
        [vim.diagnostic.severity.WARN] = "",
        [vim.diagnostic.severity.INFO] = "",
        [vim.diagnostic.severity.HINT] = "",
      }
    }
  })
end

M.keys = {
  -- Supported in snacks.picker
  {
    "gd",
    "<Cmd>lua vim.lsp.buf.definition()<CR>",
    desc = "Go to Definition",
  },
  {
    "gD",
    "<Cmd>lua vim.lsp.buf.declaration()<CR>",
    desc = "Go to Declaration",
  },
  -- default: gri
  -- {
  --   "gi",
  --   "<Cmd>lua vim.lsp.buf.implementation()<CR>",
  --   { desc = "Go to Implementation" },
  -- },
  -- default: grt
  -- {
  --   "gt",
  --   "<Cmd>lua vim.lsp.buf.type_definition()<CR>",
  --   { desc = "Go to Type Definition" },
  -- },
  -- default: grn
  -- {
  --   "gn",
  --   "<Cmd>lua vim.lsp.buf.rename()<CR>",
  --   { desc = "Rename Symbol" },
  -- },
  -- default: [d
  -- {
  --   "g,",
  --   "<Cmd>lua vim.diagnostic.goto_prev()<CR>",
  --   { desc = "Go to Previous Diagnostic" },
  -- },
  -- default: ]d
  -- {
  --   "g.",
  --   "<Cmd>lua vim.diagnostic.goto_next()<CR>",
  --   { desc = "Go to Next Diagnostic" },
  -- },
  -- default: <C-w>d
  -- {
  --   "<leader>e",
  --   "<Cmd>lua vim.diagnostic.open_float()<CR>",
  --   { desc = "Show Diagnostics for the Current Line" },
  -- },
  -- default: K
  -- {
  --   "K",
  --   "<Cmd>lua vim.lsp.buf.hover()<CR>",
  --   { desc = "Hover" },
  -- },
  -- default: <C-s>
  -- {
  --   "<C-k>",
  --   "<Cmd>lua vim.lsp.buf.signature_help()<CR>",
  --   { desc = "Signature Help" },
  -- },
}

return M
