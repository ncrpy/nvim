let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#readonly#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_theme = 'powerlineish'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.colnr = ' ℅:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = ' ␊:'
let g:airline_symbols.linenr = ' ␤:'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.colnr = ' :'
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.maxlinenr = '☰  '
let g:airline_symbols.dirty='⚡'

" for Cica font
let g:airline_left_sep = '󾂰'
let g:airline_left_alt_sep = '󾂱'
let g:airline_right_sep = '󾂴'
let g:airline_right_alt_sep = '󾂵'

let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#virtualenv#enabled = 1

" for ale
let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = ' '
let airline#extensions#ale#warning_symbol = ' '
let airline#extensions#ale#show_line_numbers = 1
let airline#extensions#ale#open_lnum_symbol = '(:'
let airline#extensions#ale#close_lnum_symbol = ')'

" for nvim-lsp
let g:airline#extensions#nvimlsp#enabled = 1
let airline#extensions#nvimlsp#error_symbol = ' '
let airline#extensions#nvimlsp#warning_symbol = ' '
