" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select')
  nnoremap <silent><buffer><expr> <BS>
  \ denite#do_map('move_up_path')
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction

nmap <Leader>d [denite]
nmap [denite] :Denite
nmap <silent> [denite]b :Denite buffer<CR>
nmap <silent> [denite]c :Denite change<CR>
nmap <silent> [denite]f :Denite file<CR>
nmap <silent> [denite]g :Denite grep<CR>
nmap <silent> [denite]h :Denite help<CR>
nmap <silent> [denite]l :Denite line<CR>
nmap <silent> [denite]m :Denite menu<CR>
nmap <silent> [denite]r :Denite file/rec<CR>
nmap <silent> [denite]t :Denite tag<CR>
nmap <silent> [denite]u :Denite file_mru<CR>
nmap <silent> [denite]y :Denite neoyank<CR>
