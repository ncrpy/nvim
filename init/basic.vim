filetype plugin indent on

set encoding=utf-8
" set fileencodings=utf-8

set hidden
set autoread
autocmd CursorHold * checktime

set number
set relativenumber
set ruler
set title
" set list

set laststatus=2
set showcmd
set showmode
set ambiwidth=single

set showmatch
set matchtime=1
set matchpairs& matchpairs+=<:>

set splitbelow
set splitright
" set lazyredraw

set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,],~
set mouse=a
set virtualedit=onemore,block
set virtualedit+=block

set clipboard&
set clipboard^=unnamedplus

set ignorecase
set smartcase
set incsearch
set hlsearch
" set wrapscan
set inccommand=split

set nowildmenu
set wildmode=list:longest,full
set completeopt=menuone,noselect

set tabstop=2
set softtabstop=0
set shiftwidth=2

set expandtab
" set smarttab
set autoindent
set smartindent

set nofixeol
" autocmd BufWritePre * :%s/\s\+$//e

set updatetime=400

packadd! termdebug
let g:termdebug_wide = 160

let g:tex_flavor='latex'

" autocmd TermOpen * startinsert
