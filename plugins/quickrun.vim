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

nnoremap <silent> qr :<C-u>QuickRun -mode n -input =@+<CR>
vnoremap <silent> qr :<C-u>QuickRun -mode v -input =@+<CR>
nnoremap <silent> qi :<C-u>QuickRun -mode n -input in<CR>
vnoremap <silent> qi :<C-u>QuickRun -mode v -input in<CR>
