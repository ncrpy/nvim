set runtimepath+=$XDG_CONFIG_HOME/nvim
let g:python3_host_prog = $HOME.'/.venv/nvim/bin/python'

function! Source(plugin_vim)
    let source_plugin = join(['source ',$XDG_CONFIG_HOME,'/nvim/plugins/',a:plugin_vim],'')
    execute source_plugin
endfunction

runtime! dein/*.vim
runtime! init/*.vim

" runtime! install.vim
