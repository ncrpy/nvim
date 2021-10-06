nnoremap <C-c><C-c> :nohlsearch<CR><C-c>

nnoremap <silent> <leader>bad :enew<CR>
nnoremap <silent> <leader>bn :bnext<CR>
nnoremap <silent> <leader>bp :bprevious<CR>
nnoremap <silent> <leader>bb :b#<CR>
nnoremap <silent> <leader>bf :bfirst<CR>
nnoremap <silent> <leader>bl :blast<CR>
nnoremap <silent> <leader>bm :bmodified<CR>
nnoremap <silent> <leader>bd :bdelete<CR>
nnoremap <silent> <leader>bD :bdelete!<CR>
nnoremap <silent> <leader>bo :BufOnly<CR>

noremap <leader>w <C-w>

nnoremap <silent> <C-a> ggVG

noremap ; :
noremap ,. ;
noremap ,, ,

inoremap <C-l> <C-g>U<Right>

" inoremap <C-d> <C-x><C-o>
inoremap <expr> . &omnifunc ? '.<C-x><C-o>' : '.'

nnoremap <silent>tm :botright vsplit<Bar>:terminal<CR>
tnoremap <silent> <ESC> <C-\><C-n>
