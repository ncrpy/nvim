nnoremap <C-c><C-c> :nohlsearch<CR><C-c>
nnoremap <silent>sh :botright vsplit<Bar>:terminal<CR>

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

nnoremap <silent> <C-a> ggVG

nnoremap ; :
nnoremap ,. ;
nnoremap ,, ,
vnoremap ; :
vnoremap ,. ;
vnoremap ,, ,

inoremap <silent><C-j> <ESC>
vnoremap <silent><C-j> <ESC>

inoremap <C-l> <C-g>U<Right>

inoremap <C-d> <C-x><C-o>
inoremap <expr> . &omnifunc ? '.<C-x><C-o>' : '.'

cnoremap w!! :w !sudo tee > /dev/null %<CR>

tnoremap <silent> <ESC> <C-\><C-n>
