let g:quickrun_config = {}

" let g:quickrun_config['*'] = {
"      \ 'runmode': "async:remote:vimproc",
"      \ }

let g:quickrun_config._ = {
    \ 'outputter/error/success': 'buffer',
    \ 'outputter/error/error': 'quickfix',
    \ 'runner': 'vimproc',
    \ 'runner/vimproc/updatetime': 10,
    \ 'hook/time/enable': 1
    \ }

" for Python
let g:quickrun_config.python = {
    \ 'cmdopt': '-u'
    \ }

nnoremap <Leader>qr :<C-U>QuickRun<CR>
xnoremap <Leader>qr gv:<C-U>QuickRun<CR>
