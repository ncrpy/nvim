local M = {}

M.keys = {
  {
    "<leader>cc",
    "<Cmd>CodeCompanionChat Toggle<CR>",
    desc = "Toggle CodeCompanion Chat",
  },
  {
    "<leader>cc",
    ":CodeCompanionChat Add<CR>",
    mode = "x",
    desc = "Add selected text to CodeCompanion Chat",
  },
  {
    "<leader>ca",
    "<Cmd>CodeCompanionActions<CR>",
    mode = { "n", "x" },
    desc = "Open CodeCompanion Actions",
  },
  {
    "<leader>c<Space>",
    ":CodeCompanion<CR>",
    mode = { "n", "x" },
    desc = "Open CodeCompanion Prompt",
  },
  {
    "<leader>cm",
    ":<C-u>CodeCompanionCmd<Space>",
    mode = { "n", "x" },
    desc = "Enter CodeCompanion Command",
  }
}

M.opts = {
  strategies = {
    -- Change the default chat adapter
    chat = {
      adapter = "gemini"
    },
    inline = {
      adapter = "gemini",
    },
    cmd = {
      adapter = "copilot",
    },
  },
  opts = {
    -- Set debug logging
    log_level = "DEBUG",
    language = "Japanese",
  },
  adapters = {
    gemini = function()
      return require("codecompanion.adapters").extend("gemini", {
        env = {
          api_key = vim.env.GEMINI_API_KEY
        },
        schema = {
          moodel = {
            default = "gemini-2.5-flash",
          },
        },
      })
    end,
  },
  display = {
    action_palette = {
      provider = "snacks",
    },
  },
}

return M
