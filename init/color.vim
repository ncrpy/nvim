" Required:
syntax enable
set termguicolors

set cursorline
set background=dark

augroup transparent_bg
    autocmd!
    autocmd ColorScheme * highlight Normal guibg=none
    autocmd ColorScheme * highlight NonText guibg=none
    autocmd ColorScheme * highlight LineNr guibg=none
    autocmd ColorScheme * highlight Folded guibg=none
    autocmd ColorScheme * highlight EndOfBuffer guibg=none
augroup END

autocmd VimEnter * nested colorscheme onedark
" colorscheme molokai
" let g:molokai_original = 1
" let g:rehash256 = 1

set list
set listchars=tab:»-,trail:-,nbsp:%,eol:↲
