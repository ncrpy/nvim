local lsp_installer = require("nvim-lsp-installer")

-- Register a handler that will be called for each installed server when it's ready (i.e. when installation is finished
-- or if the server is already installed).
lsp_installer.on_server_ready(
  function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    local runtime_path
    if server.name == "sumneko_lua" then
      runtime_path = vim.split(package.path, ';')
      table.insert(runtime_path, "lua/?.lua")
      table.insert(runtime_path, "lua/?/init.lua")
    end

    local servers = {
      jedi_language_server = {
        init_options = {
          diagnostics = {enable = false},
          completion = {disableSnippets = true}
        }
      },
      efm = {
        single_file_support = true,
        filetypes = {"python"},
        init_options = {
          documentFormatting = false
        },
        settings = {
          languages = {
            python = {
              {
                LintCommand = "flake8 --max-complexity 10 --stdin-display-name ${INPUT} -",
                lintStdin = true,
                lintFormats = {"%f:%l:%c: %m"}
              },
              {
                LintCommand = "mypy --show-column-numbers --ignore-missing-imports --no-site-packages --cache-dir=/dev/null",
                lintFormats = {
                  "%f:%l:%c: %trror: %m",
                  "%f:%l:%c: %tarning: %m",
                  "%f:%l:%c: %tote: %m"
                }
              }
            }
          }
        }
      },
      sumneko_lua = {
        settings = {
          Lua = {
            runtime = {
              -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
              version = "LuaJIT",
              -- Setup your lua path
              path = runtime_path
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {"vim"}
            },
            workspace = {
              -- Make the server aware of Neovim runtime files
              library = vim.api.nvim_get_runtime_file("", true)
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
              enable = false
            }
          }
        }
      }
    }

    for name, config in pairs(servers) do
      if server.name == name then
        opts = config
      end
    end

    -- This setup() function will take the provided server configuration and decorate it with the necessary properties
    -- before passing it onwards to lspconfig.
    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
  end
)
