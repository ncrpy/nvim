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

if vim.fn.has("wsl") == 1 then
  vim.api.nvim_create_augroup("clipboard", {})
  vim.api.nvim_create_autocmd({ "FocusGained" }, {
    group = "clipboard",
    pattern = { "*" },
    callback = function()
      vim.fn.setreg("@", vim.fn.getreg("+"))
    end
  })
  vim.api.nvim_create_autocmd({ "FocusLost" }, {
    group = "clipboard",
    pattern = { "*" },
    callback = function()
      vim.fn.setreg("+", vim.fn.getreg("@"))
    end
  })
else
  opt.clipboard:prepend({ "unnamedplus" })
end

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

if vim.fn.executable("rg") then
  opt.grepprg = "rg --vimgrep --no-heading --smart-case"
  opt.grepformat:prepend({ "%f:%l:%c:%m" })
end

noremap("", "<C-l>", ":<C-u>nohlsearch<CR><C-l>")
noremap("", "<leader>w", "<C-w>")

noremap("", "<leader>ba", "<Cmd>enew<CR>")
noremap("", "<leader>bb", "<Cmd>b#<CR>")
noremap("", "<leader>bm", "<Cmd>bmodified<CR>")
noremap("", "<leader>bn", "<Cmd>bnext<CR>")
noremap("", "<leader>bp", "<Cmd>bprevious<CR>")
noremap("", "<leader>bf", "<Cmd>bfirst<CR>")
noremap("", "<leader>bl", "<Cmd>blast<CR>")
noremap("", "<leader>bc", "<Cmd>bdelete<CR>")
noremap("", "<leader>bd", "<Cmd>bdelete<CR>")
noremap("", "<leader>bD", "<Cmd>bdelete!<CR>")
noremap("", "<leader>bo", "<Cmd>%bdelete<Bar>edit#<Bar>bdelete#<CR>")
noremap("", "<leader>i", function()
  opt.relativenumber = not opt.relativenumber:get()
end)

noremap("", "<leader>a", "ggVG")

noremap("", ";", ":")
noremap("", ",.", ";")
noremap("", ",,", ",")

noremap("i", "<C-l>", "<C-g>U<Right>")

noremap("n", "<leader>s", ":<C-u>%s///g<Left><Left>")

noremap("t", "<Esc>", "<Esc><C-\\><C-n>")
