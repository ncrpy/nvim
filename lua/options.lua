local opt = vim.opt
local noremap = vim.keymap.set

opt.syntax = "on"

opt.hidden = true
opt.autoread = true

opt.encoding = "utf-8"
opt.ambiwidth = "single"

opt.number = true
opt.ruler = true

opt.laststatus = 3
opt.showcmd = true
opt.showmode = true

opt.showmatch = true
opt.matchtime = 1

opt.splitbelow = true
opt.splitright = true

opt.wildmenu = false
opt.wildmode = { "list:longest", "full" }
opt.completeopt = { "menuone", "noselect" }

opt.backspace = { "indent", "eol", "start" }
opt.whichwrap:append("h,l,<,>,[,],~")
opt.virtualedit = { "onemore", "block" }

opt.clipboard:prepend({ "unnamedplus" })

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.expandtab = true
opt.tabstop = 8
opt.softtabstop = -1
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true

opt.fixeol = false

opt.list = true
opt.listchars = {
  tab = "»-",
  trail = "-",
  nbsp = "%",
  eol = "↲",
}

if vim.fn.executable("rg") == 1 then
  opt.grepprg = "rg --vimgrep --no-heading --smart-case"
  opt.grepformat:prepend({ "%f:%l:%c:%m" })
end

noremap("", "<C-l>", ":<C-u>nohlsearch<CR><C-l>")

noremap({ "n", "x" }, "<leader>a", "ggVG")

noremap({ "n", "x" }, "<leader>ba", "<Cmd>enew<CR>")
noremap({ "n", "x" }, "<leader>bb", "<Cmd>b#<CR>")
noremap({ "n", "x" }, "<leader>bm", "<Cmd>bmodified<CR>")
noremap({ "n", "x" }, "<leader>bn", "<Cmd>bnext<CR>")
noremap({ "n", "x" }, "<leader>bp", "<Cmd>bprevious<CR>")
noremap({ "n", "x" }, "<leader>bf", "<Cmd>bfirst<CR>")
noremap({ "n", "x" }, "<leader>bl", "<Cmd>blast<CR>")
noremap({ "n", "x" }, "<leader>bc", "<Cmd>bdelete<CR>")
noremap({ "n", "x" }, "<leader>bd", "<Cmd>bdelete<CR>")
noremap({ "n", "x" }, "<leader>bD", "<Cmd>bdelete!<CR>")
noremap({ "n", "x" }, "<leader>bo", "<Cmd>%bdelete<Bar>edit#<Bar>bdelete#<CR>")

noremap({ "n", "x" }, "<leader>i", function()
  opt.relativenumber = not opt.relativenumber:get()
end)

noremap({ "n", "x" }, "<leader>w", "<C-w>", { remap = true })

noremap({ "n", "x" }, ";", ":")
noremap({ "n", "x" }, ",.", ";")
noremap({ "n", "x" }, ",,", ",")

noremap("i", "<C-l>", "<C-g>U<Right>")

noremap("n", "<leader>s", ":<C-u>%s///g<Left><Left><Left>")
noremap("x", "<leader>s", ":s///g<Left><Left><Left>")

noremap("t", "<Esc>", "<C-\\><C-n>")

vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("terminal", {}),
  command = "startinsert",
})
