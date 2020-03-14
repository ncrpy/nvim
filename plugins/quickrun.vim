let g:quickrun_config = {}
let g:quickrun_config = {
    \ 'runmode': "async:remote:vimproc",
    \ }
let g:quickrun_config['*'] = {
    \ 'outputter/error/success': 'buffer',
    \ 'outputter/error/error': 'quickfix',
    \ 'outputter/quickfix/open_cmd': 'copen',
    \ 'runner': 'vimproc',
    \ 'runner/vimproc/updatetime': 60,
    \ 'hook/time/enable': 1
    \ }

" おまけの設定 for Python
let g:quickrun_config.python = {
    \ 'command': '~/.pyenv/shims/python',  " pyenvでインストールしたPythonを使う
    \ 'cmdopt': '-u'  " 標準出力を都度表示する
    \ }

nnoremap <Leader>qr :<C-U>QuickRun<CR>
xnoremap <Leader>qr gv:<C-U>QuickRun<CR>
