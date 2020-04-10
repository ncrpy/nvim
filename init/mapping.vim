inoremap <C-h> <Left>  
inoremap <C-j> <Down>  
inoremap <C-k> <Up>  
inoremap <C-l> <Right>

nnoremap <C-c><C-c> :nohlsearch<CR><C-c>
nnoremap <silent>sh :botright vsplit<Bar>:terminal<CR>

nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bb :b#<CR>
nnoremap <silent>bd :bdelete<CR>

nnoremap ; :

cnoremap w!! w !sudo tee > /dev/null %<CR> :e!<CR>

tnoremap <silent> <ESC> <C-\><C-n>
