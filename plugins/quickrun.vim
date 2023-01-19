let g:quickrun_config = {}

" let g:quickrun_config['*'] = {
"      \ 'runmode': "async:remote:vimproc",
"      \ }

let g:quickrun_config._ = {
    \ 'outputter/error/success': 'buffer',
    \ 'outputter/error/error': 'quickfix',
    \ 'outputter/buffer/opener': '10split',
    \ 'runner': 'vimproc',
    \ 'runner/vimproc/updatetime': 60,
    \ 'hook/time/enable': 1
    \ }

" for Python
let g:quickrun_config.python = {
    \ 'cmdopt': '-u',
    \ }
if isdirectory($VIRTUAL_ENV)
    let g:quickrun_config.python['command'] = $VIRTUAL_ENV.'/bin/python'
endif

nnoremap <silent> <Leader>r :<C-u>QuickRun -mode n -input =@+<CR>
vnoremap <silent> <Leader>r :<C-u>QuickRun -mode v -input =@+<CR>
nnoremap <Leader>q :<C-u>QuickRun -mode n -input 
vnoremap <Leader>q :<C-u>QuickRun -mode v -input 
