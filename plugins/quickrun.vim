let g:quickrun_config = {}

" let g:quickrun_config['*'] = {
"      \ 'runmode': "async:remote:vimproc",
"      \ }

let g:quickrun_config._ = {
    \ 'outputter/error/success': 'buffer',
    \ 'outputter/error/error': 'quickfix',
    \ 'outputter/buffer/split': '10',
    \ 'runner': 'vimproc',
    \ 'runner/vimproc/updatetime': 10,
    \ 'hook/time/enable': 1
    \ }

" for Python
let g:quickrun_config.python = {
    \ 'cmdopt': '-u',
    \ }
if isdirectory($VIRTUAL_ENV)
    let g:quickrun_config.python['command'] = $VIRTUAL_ENV.'/bin/python'
endif

nnoremap <silent> qr :<C-u>QuickRun -mode n -input =@+<CR>
vnoremap <silent> qr :<C-u>QuickRun -mode v -input =@+<CR>
nnoremap qi :<C-u>QuickRun -mode n -input 
vnoremap qi :<C-u>QuickRun -mode v -input 
