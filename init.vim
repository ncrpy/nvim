"dein Scripts-----------------------------

let s:dein_config_dir = $XDG_CONFIG_HOME . '/nvim'
let s:dein_cache_dir = $XDG_CACHE_HOME . '/dein'


if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$XDG_CACHE_HOME/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state(s:dein_cache_dir)
  call dein#begin(s:dein_cache_dir)
 
  " Load TOML in order to add or remove plugins.
  call dein#load_toml(s:dein_config_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:dein_config_dir . '/dein_lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()

endif

" Required:
filetype plugin indent on
syntax enable

" Install not-installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


"settings---------------------------------

set number
set expandtab
set hlsearch
set ignorecase
set incsearch
set smartcase
set laststatus=2
set autoindent
set showcmd
set background=dark
set wildmenu
set ruler

colorscheme molokai
