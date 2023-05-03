local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup_handlers {
  function (server_name)
    lspconfig[server_name].setup {
      capabilities = capabilities
    }
  end,
  ["clangd"] = function()
    lspconfig.clangd.setup {
      capabilities = vim.tbl_deep_extend("keep", { offsetEncoding = { "utf-16", "utf-8" } }, capabilities),
    }
  end,
  ["lua_ls"] = function()
    lspconfig.lua_ls.setup {
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = "LuaJIT",
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {"vim"},
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
    }
  end,
  ["jedi_language_server"] = function()
    lspconfig.jedi_language_server.setup {
      capabilities = capabilities,
      init_options = {
        diagnostics = { enable = false }
      }
    }
  end,
  ["pyright"] = function()
    lspconfig.pyright.setup {
      capabilities = capabilities,
      settings = {
        pyright = {
          disableLanguageServices = true
        }
      }
    }
  end
}

vim.fn.sign_define("DiagnosticSignError", {text = "", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = "", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = "", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = "", texthl = "DiagnosticSignHint"})

vim.keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>",
  { desc = "Go to Declaration" }
)
vim.keymap.set("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>",
  { desc = "Go to Definition" }
)
vim.keymap.set("n", "gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>",
  { desc = "Go to Implementation" }
)
vim.keymap.set("n", "gt", "<Cmd>lua vim.lsp.buf.type_definition()<CR>",
  { desc = "Go to Type Definition" }
)
vim.keymap.set("n", "gn", "<Cmd>lua vim.lsp.buf.rename()<CR>",
  { desc = "Rename Symbol" }
)
vim.keymap.set("n", "g,", "<Cmd>lua vim.diagnostic.goto_prev()<CR>",
  { desc = "Go to Previous Diagnostic" }
)
vim.keymap.set("n", "g.", "<Cmd>lua vim.diagnostic.goto_next()<CR>",
  { desc = "Go to Next Diagnostic" }
)
vim.keymap.set("n", "<leader>e", "<Cmd>lua vim.diagnostic.open_float()<CR>",
  { desc = "Show Diagnostics for the Current Line" }
)
vim.keymap.set("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>",
  { desc = "Hover" }
)
vim.keymap.set("n", "<C-k>", "<Cmd>lua vim.lsp.buf.signature_help()<CR>",
  { desc = "Signature Help" }
)