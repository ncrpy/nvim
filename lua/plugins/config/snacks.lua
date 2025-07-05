local M = {}

local pick = function(source, opts)
  return function()
    local picker = require("snacks.picker")
    picker[source](opts)
  end
end

M.opts = {
  input = { enabled = true },
  notifier = { enabled = true },
  notify = { enabled = true },
  picker = {
    sources = {
      explorer = {
        auto_close = true,
        jump = { close = true },
        layout = { preset = "default", preview = true },
      },
    },
  },
}

M.keys = {
  {
    "<leader>f<Space>",
    pick("pickers"),
    desc = "Pickers",
  },
  {
    "<leader>fa",
    pick("resume"),
    desc = "Resume",
  },
  {
    "<leader>fb",
    pick("buffers"),
    desc = "Buffers",
  },
  {
    "<leader>fc",
    pick("commands"),
    desc = "Commands",
  },
  {
    "<leader>fd",
    pick("diagnostics"),
    desc = "Diagnostics",
  },
  {
    "<leader>fD",
    pick("diagnostics_buffer"),
    desc = "Diagnostics Buffer",
  },
  {
    "<leader>fe",
    pick("explorer"),
    desc = "File Explorer",
  },
  {
    "<leader>ff",
    pick("smart"),
    desc = "Smart Find Files",
  },
  {
    "<leader>fg",
    pick("grep"),
    desc = "Grep",
  },
  {
    "<leader>fG",
    pick("grep_buffers"),
    desc = "Grep Open Buffers",
  },
  {
    "<leader>fh",
    pick("command_history"),
    desc = "Command History",
  },
  {
    "<leader>fi",
    pick("lines"),
    desc = "Buffer Lines",
  },
  {
    "<leader>fj",
    pick("jumps"),
    desc = "Jumps",
  },
  {
    "<leader>fk",
    pick("keymaps"),
    desc = "Keymaps",
  },
  {
    "<leader>fl",
    pick("loclist"),
    desc = "Location List",
  },
  {
    "<leader>fm",
    pick("marks"),
    desc = "Marks",
  },
  {
    "<leader>fn",
    pick("notifications"),
    desc = "Notifications",
  },
  {
    "<leader>fp",
    pick("projects"),
    desc = "Projects",
  },
  {
    "<leader>fq",
    pick("qflist"),
    desc = "Quickfix List",
  },
  {
    "<leader>fr",
    pick("recent"),
    desc = "Recent (oldfiles)",
  },
  {
    "<leader>fs",
    pick("search_history"),
    desc = "Search History",
  },
  {
    "<leader>fu",
    pick("undo"),
    desc = "Undo History",
  },
  {
    "<leader>fv",
    pick("registers"),
    desc = "Registers",
  },
  {
    "<leader>fw",
    pick("grep_word"),
    desc = "Visual selection or word",
    mode = { "n", "x" },
  },
  {
    "<leader>f,",
    pick("files", { cwd = vim.fn.stdpath("config")}),
    desc = "Find Config Files",
  },
  -- Git
  {
    "<leader>g<Space>",
    pick("git_log"),
    desc = "Git Log",
  },
  {
    "<leader>gb",
    pick("git_branches"),
    desc = "Git Branches",
  },
  {
    "<leader>gd",
    pick("git_diff"),
    desc = "Git Diff (Hunks)",
  },
  {
    "<leader>gf",
    pick("git_files"),
    desc = "Git Files",
  },
  {
    "<leader>gg",
    pick("git_grep"),
    desc = "Git Grep",
  },
  {
    "<leader>gh",
    pick("git_stash"),
    desc = "Git Stash",
  },
  {
    "<leader>gl<Space>",
    pick("git_log"),
    desc = "Git Log",
  },
  {
    "<leader>glf",
    pick("git_log_file"),
    desc = "Git Log File",
  },
  {
    "<leader>gll",
    pick("git_log_line"),
    desc = "Git Log Line",
  },
  {
    "<leader>gs",
    pick("git_status"),
    desc = "Git Status",
  },
  -- LSP
  {
    "gd",
    pick("lsp_definitions"),
    desc = "LSP Definitions",
  },
  {
    "gD",
    pick("lsp_declarations"),
    desc = "LSP Declarations",
  },
  {
    "grr",
    pick("lsp_references"),
    desc = "LSP References",
  },
  {
    "gri",
    pick("lsp_implementations"),
    desc = "LSP Implementations",
  },
  {
    "grt",
    pick("lsp_type_definitions"),
    desc = "LSP Type Definitions",
  },
  {
    "<leader>fo",
    pick("lsp_symbols"),
    desc = "LSP Symbols",
  },
  {
    "<leader>fO",
    pick("lsp_workspace_symbols"),
    desc = "LSP Workspace Symbols",
  },
}

return M
