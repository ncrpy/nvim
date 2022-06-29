" Move to previous/next
nnoremap <silent>    <leader>bN <Cmd>BufferPrevious<CR>
nnoremap <silent>    <leader>bn <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <leader>b< <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <leader>b> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <leader>b1 <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <leader>b2 <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <leader>b3 <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <leader>b4 <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <leader>b5 <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <leader>b6 <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <leader>b7 <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <leader>b8 <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <leader>b9 <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <leader>b0 <Cmd>BufferLast<CR>
" Pin/unpin buffer
nnoremap <silent>    <leader>bp <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent>    <leader>bc <Cmd>BufferClose<CR>
nnoremap <silent>    <leader>bd <Cmd>BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout
nnoremap <silent>    <leader>bw <Cmd>BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight
nnoremap <silent>    <leader>bo <Cmd>BufferCloseAllButCurrent<CR>
nnoremap <silent>    <leader>bi <Cmd>BufferCloseAllButPinned<CR>
" Magic buffer-picking mode
nnoremap <silent>    <leader>bs <Cmd>BufferPick<CR>
" Sort automatically by...
nnoremap <silent>    <leader>brb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent>    <leader>brd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent>    <leader>brl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent>    <leader>brw <Cmd>BufferOrderByWindowNumber<CR>

" Other:
" :BarbarEnable - enables barbar (enabled by default)
" :BarbarDisable - very bad command, should never be used


augroup transparent_barbar_bg
  autocmd!
  autocmd ColorScheme * highlight BufferCurrent guibg=none
  autocmd ColorScheme * highlight BufferCurrentIndex guibg=none
  autocmd ColorScheme * highlight BufferCurrentMod guibg=none
  autocmd ColorScheme * highlight BufferCurrentSign guibg=none
  autocmd ColorScheme * highlight BufferCurrentTarget guibg=none
augroup END
