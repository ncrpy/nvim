set runtimepath+=$XDG_CONFIG_HOME/nvim
let g:python3_host_prog = $XDG_CONFIG_HOME.'/nvim/venv/bin/python'

let $PATH = $PATH.':'.$XDG_CONFIG_HOME.'/nvim/venv/bin'

command! -nargs=1 Source call Source(<f-args>)
function! Source(plugin_vim)
    let source_plugin = join(['source ',$XDG_CONFIG_HOME,'/nvim/plugins/vimscript/',a:plugin_vim],'')
    execute source_plugin
endfunction
function! LuaSource(plugin_lua)
    let lua_source_plugin = join(['lua ',$XDG_CONFIG_HOME,'/nvim/plugins/lua/',a:plugin_lua],'')
    execute lua_source_plugin
endfunction

runtime! dein/*.vim
runtime! init/*.vim

" runtime! install.vim
