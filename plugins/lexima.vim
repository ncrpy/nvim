" call lexima#add_rule({'char': '<', 'input_after': '>'})
" call lexima#add_rule({'char': '<', 'at': '\\\%#'})
" call lexima#add_rule({'char': '>', 'at': '\%#>', 'leave': 1})
" call lexima#add_rule({'char': '<BS>', 'at': '<\%#>', 'delete': 1})

call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'tex'})
call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'tex'})

inoremap <C-l> <C-g>U<Right>
