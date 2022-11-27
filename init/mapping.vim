noremap <C-l> <Cmd>nohlsearch<CR><C-l>

noremap <silent> <leader>ba <Cmd>enew<CR>
noremap <silent> <leader>bb <Cmd>b#<CR>
noremap <silent> <leader>bm <Cmd>bmodified<CR>
" noremap <silent> <leader>bn <Cmd>bnext<CR>
" noremap <silent> <leader>bp <Cmd>bprevious<CR>
" noremap <silent> <leader>bf <Cmd>bfirst<CR>
" noremap <silent> <leader>bl <Cmd>blast<CR>
" noremap <silent> <leader>bd <Cmd>bdelete<CR>
" noremap <silent> <leader>bD <Cmd>bdelete!<CR>
" noremap <silent> <leader>bo <Cmd>BufOnly<CR>

map <leader>w <C-w>

nnoremap <silent> <leader>a ggVG

noremap ; :
noremap ,. ;
noremap ,, ,

inoremap <C-l> <C-g>U<Right>
inoremap <C-f> <ESC><Left>"zx"zpa

" inoremap <C-d> <C-x><C-o>
" inoremap <expr> . &omnifunc ? '.<C-x><C-o>' : '.'

noremap <silent> <leader>t <Cmd>botright vsplit<Bar>terminal<CR>
tnoremap <silent> <ESC> <C-\><C-n>
