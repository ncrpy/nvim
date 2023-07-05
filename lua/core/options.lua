vim.cmd([[
syntax on
filetype plugin indent on

set hidden
set autoread

set encoding=utf-8
set ambiwidth=single

set number
set ruler

set laststatus=3
set showcmd
set showmode

set showmatch
set matchtime=1

set splitbelow
set splitright

set nowildmenu
set wildmode=list:longest,full
set completeopt=menuone,noselect

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~
set virtualedit=onemore,block

set clipboard&
set clipboard^=unnamedplus

set hlsearch
set incsearch
set ignorecase
set smartcase

set expandtab
set tabstop=2
set softtabstop=0
set shiftwidth=0
set autoindent
set smartindent

set nofixeol

set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲

noremap <C-l> :<C-u>nohlsearch<CR><C-l>
noremap <leader>w <C-w>

noremap <silent> <leader>ba :<C-u>enew<CR>
noremap <silent> <leader>bb :<C-u>b#<CR>
noremap <silent> <leader>bm :<C-u>bmodified<CR>
noremap <silent> <leader>bn :<C-u>bnext<CR>
noremap <silent> <leader>bp :<C-u>bprevious<CR>
noremap <silent> <leader>bf :<C-u>bfirst<CR>
noremap <silent> <leader>bl :<C-u>blast<CR>
noremap <silent> <leader>bc :<C-u>bdelete<CR>
noremap <silent> <leader>bd :<C-u>bdelete<CR>
noremap <silent> <leader>bD :<C-u>bdelete!<CR>
noremap <silent> <leader>bo :<C-u>%bdelete<Bar>edit#<Bar>bdelete#<CR>

noremap <silent> <leader>i :<C-u>set invrelativenumber<CR>

noremap <silent> <leader>a ggVG

noremap ; :
noremap ,. ;
noremap ,, ,

inoremap <C-l> <C-g>U<Right>

nnoremap <leader>s :<C-u>%s///g<Left><Left>

nnoremap <silent> <leader>t :<C-u>botright vsplit<Bar>:terminal<CR>
tnoremap <silent> <ESC> <C-\><C-n>
]])
