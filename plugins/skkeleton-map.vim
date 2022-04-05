inoremap <silent> <C-b> <C-\><C-o>:Skkeleton<CR>
cnoremap <silent> <C-b> <C-\><C-o>:Skkeleton<CR>

command! Skkeleton :call skkeleton#request('toggle', [])
