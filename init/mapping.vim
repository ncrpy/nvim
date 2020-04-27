nnoremap <C-c><C-c> :nohlsearch<CR><C-c>
nnoremap <silent>sh :botright vsplit<Bar>:terminal<CR>

nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bb :b#<CR>
nnoremap <silent>bd :bdelete<CR>

nnoremap ; :

inoremap <silent><C-j> <ESC>

cnoremap w!! :w !sudo tee > /dev/null %<CR>

tnoremap <silent> <ESC> <C-\><C-n>
