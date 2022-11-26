require('telescope').load_extension('command_palette')

local menu = {
  {"File",
    {"Quit", ":qa"},
    {"Save All", ":wa"},
    {"Save", ":w"},
    {"Open Git Workspace", ":Telescope git_files", 1},
    {"Open Recent", ":Telescope oldfiles", 1},
    {"Open File", ":Telescope find_files", 1},
    {"New File", ":enew"},
  },
  {"Edit",
    {"Replace", ':call feedkeys(":%s/")'},
    {"Find in Files", ":Telescope live_grep", 1},
    {"Find", ":Telescope current_buffer_fuzzy_find", 1},
    {"Paste", ':call feedkeys("p")'},
    {"Copy", ':call feedkeys("y")'},
    {"Cut", ':call feedkeys("x")'},
    {"Redo", ':call feedkeys("<C-r>")'},
    {"Undo", ':call feedkeys("u")'},
  },
  {"Help",
    { "tips", ":help tips" },
    { "cheatsheet", ":help index" },
    { "tutorial", ":help tutor" },
    { "summary", ":help summary" },
    { "quick reference", ":help quickref" },
    { "search help(F1)", ":lua require('telescope.builtin').help_tags()", 1 },
  },
  {"Vim",
    { "reload vimrc", ":source $MYVIMRC" },
    { 'check health', ":checkhealth" },
    { "jumps (Alt-j)", ":lua require('telescope.builtin').jumplist()" },
    { "commands", ":lua require('telescope.builtin').commands()" },
    { "command history", ":lua require('telescope.builtin').command_history()" },
    { "registers (A-e)", ":lua require('telescope.builtin').registers()" },
    { "colorshceme", ":lua require('telescope.builtin').colorscheme()", 1 },
    { "vim options", ":lua require('telescope.builtin').vim_options()" },
    { "keymaps", ":lua require('telescope.builtin').keymaps()" },
    { "buffers", ":Telescope buffers" },
    { "search history (C-h)", ":lua require('telescope.builtin').search_history()" },
    { "paste mode", ':set paste!' },
    { 'cursor line', ':set cursorline!' },
    { 'cursor column', ':set cursorcolumn!' },
    { "spell checker", ':set spell!' },
    { "relative number", ':set relativenumber!' },
    { "search highlighting (F12)", ':set hlsearch!' },
  },
  {"View"},
  {"Git"},
  {"LSP"},
  {"DAP"},
}

for _, v in ipairs(menu) do
  table.insert(require('command_palette').CpMenu, v)
end
