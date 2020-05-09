nnoremap <C-c><C-c> :nohlsearch<CR><C-c>
nnoremap <silent>sh :botright vsplit<Bar>:terminal<CR>

nnoremap <silent> <C-b>p :bprevious<CR>
nnoremap <silent> <C-b>n :bnext<CR>
nnoremap <silent> <C-b>b :b#<CR>
nnoremap <silent> <C-b>d :bdelete<CR>

nnoremap ; :

inoremap <silent><C-j> <ESC>
vnoremap <silent><C-j> <ESC>

cnoremap w!! :w !sudo tee > /dev/null %<CR>

tnoremap <silent> <ESC> <C-\><C-n>
