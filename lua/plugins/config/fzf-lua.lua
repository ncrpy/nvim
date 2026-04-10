local M = {}

local fzflua = function(source, opts)
  return function()
    require("fzf-lua")[source](opts)
  end
end

M.keys = {
  {
    "<leader>f<Space>",
    ":<C-u>FzfLua<Space>",
    desc = "FzfLua",
  },
  {
    "<leader>f<CR>",
    fzflua("resume"),
    desc = "Resume",
  },
  {
    "<leader>fa",
    fzflua("builtin"),
    desc = "Builtin",
  },
  {
    "<leader>fb",
    fzflua("buffers"),
    desc = "Buffers",
  },
  {
    "<leader>ff",
    fzflua("files"),
    desc = "Files",
  },
  {
    "<leader>fg",
    fzflua("live_grep"),
    desc = "Live Grep",
  },
  {
    "<leader>fh",
    fzflua("command_history"),
    desc = "Command History",
  },
  {
    "<leader>fj",
    fzflua("jumps"),
    desc = "Jumplist",
  },
  {
    "<leader>fk",
    fzflua("keymaps"),
    desc = "Keymaps",
  },
  {
    "<leader>fl",
    fzflua("loclist"),
    desc = "Location List",
  },
  {
    "<leader>fm",
    fzflua("marks"),
    desc = "Marks",
  },
  {
    "<leader>fo",
    fzflua("history"),
    desc = "Oldfiles",
  },
  {
    "<leader>fq",
    fzflua("quickfix"),
    desc = "Quickfix List",
  },
  {
    "<leader>fr",
    fzflua("registers"),
    desc = "Registers",
  },
  {
    "<leader>fs",
    fzflua("search_history"),
    desc = "Search History",
  },
  {
    "<leader>fu",
    fzflua("undotree"),
    desc = "Undo Tree",
  },
  {
    "<leader>fw",
    fzflua("grep_cword"),
    desc = "Search Word Under Cursor",
  },
  {
    "<leader>fW",
    fzflua("grep_cWORD"),
    desc = "Search WORD Under Cursor",
  },
  -- LSP
  {
    "gd",
    fzflua("lsp_definitions"),
    desc = "LSP Definitions",
  },
  {
    "gD",
    fzflua("lsp_declarations"),
    desc = "LSP Declarations",
  },
  {
    "gri",
    fzflua("lsp_implementations"),
    desc = "LSP Implementations",
  },
  {
    "grr",
    fzflua("lsp_references"),
    desc = "LSP References",
  },
  {
    "grt",
    fzflua("lsp_typedefs"),
    desc = "LSP Type Definitions",
  },
  {
    "<leader>fo",
    fzflua("lsp_document_symbols"),
    desc = "LSP Document Symbols",
  },
  {
    "<leader>fO",
    fzflua("lsp_workspace_symbols"),
    desc = "LSP Workspace Symbols",
  },
}

return M
