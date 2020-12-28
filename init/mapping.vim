nnoremap <C-c><C-c> :nohlsearch<CR><C-c>
nnoremap <silent>sh :botright vsplit<Bar>:terminal<CR>

nnoremap <silent> bad :enew<CR>
nnoremap <silent> bn :bnext<CR>
nnoremap <silent> bp :bprevious<CR>
nnoremap <silent> bb :b#<CR>
nnoremap <silent> bf :bfirst<CR>
nnoremap <silent> bl :blast<CR>
nnoremap <silent> bm :bmodified<CR>
nnoremap <silent> bd :bdelete<CR>
nnoremap <silent> bD :bdelete!<CR>
nnoremap <silent> bo :BufOnly<CR>

nnoremap ; :

inoremap <silent><C-j> <ESC>
vnoremap <silent><C-j> <ESC>

inoremap <C-l> <C-g>U<Right>

cnoremap w!! :w !sudo tee > /dev/null %<CR>

tnoremap <silent> <ESC> <C-\><C-n>
