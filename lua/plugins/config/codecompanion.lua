local M = {}

M.keys = {
  {
    "<leader>ca",
    "<Cmd>CodeCompanionActions<CR>",
    mode = { "n", "x" },
    desc = "CodeCompanion Actions",
  },
  {
    "<leader>cc",
    "<Cmd>CodeCompanionChat Toggle<CR>",
    desc = "CodeCompanion Chat",
  },
  {
    "<leader>cc",
    ":CodeCompanionChat Add<CR>",
    mode = "x",
    silent = true,
    desc = "CodeCompanion Chat: Add selected text",
  },
  {
    "<leader>c<Space>",
    ":CodeCompanion<CR>",
    mode = { "n", "x" },
    silent = true,
    desc = "CodeCompanion Prompt",
  },
  {
    "<leader>cm",
    ":<C-u>CodeCompanionCmd<Space>",
    mode = { "n", "x" },
    desc = "CodeCompanion Command",
  },
}

M.opts = {
  strategies = {
    -- Change the default chat adapter
    chat = {
      adapter = "gemini",
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
  display = {
    action_palette = {
      provider = "snacks",
    },
  },
}

return M
