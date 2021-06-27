set runtimepath+=$XDG_CONFIG_HOME/nvim
let g:python3_host_prog = stdpath('config').'/venv/bin/python'

let $PATH = $PATH.':'.stdpath('config').'/venv/bin'.':'.stdpath('config').'/node_modules/.bin'

command! -nargs=1 Source call Source(<f-args>)
function! Source(plugin_vim)
    let source_plugin = join(['source ',stdpath('config'),'/plugins/',a:plugin_vim],'')
    execute source_plugin
endfunction

runtime! dein/*.vim
runtime! init/*.vim

" runtime! install.vim
lua require("setup")
