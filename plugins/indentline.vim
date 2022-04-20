autocmd VimEnter * if bufname('%') == '' | IndentLinesDisable | endif

let g:indentLine_defaultGroup = 'SpecialKey'
let g:indentLine_fileTypeExclude = ['tex', 'latex']
let g:indentLine_char = '▏'
" let g:indentLine_char_list = ['|', '¦', '┆', '┊']
