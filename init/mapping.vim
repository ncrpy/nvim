nnoremap <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap <silent> <leader>ba :<C-u>enew<CR>
nnoremap <silent> <leader>bb :<C-u>b#<CR>
nnoremap <silent> <leader>bm :<C-u>bmodified<CR>
" nnoremap <silent> <leader>bn :<C-u>bnext<CR>
" nnoremap <silent> <leader>bp :<C-u>bprevious<CR>
" nnoremap <silent> <leader>bf :<C-u>bfirst<CR>
" nnoremap <silent> <leader>bl :<C-u>blast<CR>
" nnoremap <silent> <leader>bd :<C-u>bdelete<CR>
" nnoremap <silent> <leader>bD :<C-u>bdelete!<CR>
" nnoremap <silent> <leader>bo :<C-u>BufOnly<CR>

noremap <leader>w <C-w>

nnoremap <silent> <leader>a ggVG

noremap ; :
noremap ,. ;
noremap ,, ,

inoremap <C-l> <C-g>U<Right>
inoremap <C-f> <ESC><Left>"zx"zpa

" inoremap <C-d> <C-x><C-o>
" inoremap <expr> . &omnifunc ? '.<C-x><C-o>' : '.'

nnoremap <silent> <leader>t :<C-u>botright vsplit<Bar>:terminal<CR>
tnoremap <silent> <ESC> <C-\><C-n>
