local M = {}

-- opts for mason-lspconfig
M.opts = function()
  local lspconfig = require("lspconfig")
  local capabilities = require("cmp_nvim_lsp").default_capabilities()

  local merge_capabilities = function(tbl)
    return vim.tbl_deep_extend("force", capabilities, tbl)
  end

  local handlers = {
    function(server_name)
      lspconfig[server_name].setup({
        capabilities = capabilities,
      })
    end,
    ["clangd"] = function()
      lspconfig.clangd.setup({
        capabilities = merge_capabilities({
          textdocument = {
            completion = {
              editsnearcursor = true,
            },
          },
          offsetencoding = { "utf-8", "utf-16" },
        }),
      })
    end,
    ["lua_ls"] = function()
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            runtime = {
              -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
              version = "LuaJIT",
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = { "vim" },
            },
            workspace = {
              -- Make the server aware of Neovim runtime files
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
              enable = false,
            },
          },
        },
      })
    end,
    ["jedi_language_server"] = function()
      lspconfig.jedi_language_server.setup({
        capabilities = capabilities,
        init_options = {
          diagnostics = { enable = false },
        },
      })
    end,
    ["basedpyright"] = function()
      lspconfig.basedpyright.setup({
        capabilities = capabilities,
        settings = {
          basedpyright = {
            typeCheckingMode = "standard",
            disableLanguageServices = true,
          },
        },
      })
    end,
  }

  return { handlers = handlers }
end

-- setup for nvim-lspconfig
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
  {
    "gD",
    "<Cmd>lua vim.lsp.buf.declaration()<CR>",
    { desc = "Go to Declaration" },
  },
  {
    "gd",
    "<Cmd>lua vim.lsp.buf.definition()<CR>",
    { desc = "Go to Definition" },
  },
  {
    "gD",
    "<Cmd>lua vim.lsp.buf.declaration()<CR>",
    { desc = "Go to Declaration" },
  },
  {
    "gd",
    "<Cmd>lua vim.lsp.buf.definition()<CR>",
    { desc = "Go to Definition" },
  },
  {
    "gi",
    "<Cmd>lua vim.lsp.buf.implementation()<CR>",
    { desc = "Go to Implementation" },
  },
  {
    "gt",
    "<Cmd>lua vim.lsp.buf.type_definition()<CR>",
    { desc = "Go to Type Definition" },
  },
  {
    "gn",
    "<Cmd>lua vim.lsp.buf.rename()<CR>",
    { desc = "Rename Symbol" },
  },
  {
    "g,",
    "<Cmd>lua vim.diagnostic.goto_prev()<CR>",
    { desc = "Go to Previous Diagnostic" },
  },
  {
    "g.",
    "<Cmd>lua vim.diagnostic.goto_next()<CR>",
    { desc = "Go to Next Diagnostic" },
  },
  {
    "<leader>e",
    "<Cmd>lua vim.diagnostic.open_float()<CR>",
    { desc = "Show Diagnostics for the Current Line" },
  },
  {
    "K",
    "<Cmd>lua vim.lsp.buf.hover()<CR>",
    { desc = "Hover" },
  },
  {
    "<C-k>",
    "<Cmd>lua vim.lsp.buf.signature_help()<CR>",
    { desc = "Signature Help" },
  },
}

return M
