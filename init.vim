set runtimepath+=$XDG_CONFIG_HOME/nvim
let g:python3_host_prog = $XDG_CONFIG_HOME.'/nvim/venv/bin/python'

runtime! dein/*.vim
runtime! init/*.vim

" runtime! install.vim
