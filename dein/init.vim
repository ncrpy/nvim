"dein Scripts-----------------------------

let s:dein_config_dir = stdpath('config') . '/dein'
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
  call dein#load_toml(s:dein_config_dir . '/dein-lua.toml', {'lazy': 0})
  call dein#load_toml(s:dein_config_dir . '/dein-lazy.toml', {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()

endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------
