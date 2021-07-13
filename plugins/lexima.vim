" call lexima#add_rule({'char': '<', 'input_after': '>'})
" call lexima#add_rule({'char': '<', 'at': '\\\%#'})
" call lexima#add_rule({'char': '>', 'at': '\%#>', 'leave': 1})
" call lexima#add_rule({'char': '<BS>', 'at': '<\%#>', 'delete': 1})

call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'tex'})
call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'input': '<BS><Del>', 'filetype': 'tex'})

call lexima#add_rule({'char': '(', 'at': '\%#)'})
call lexima#add_rule({'char': '{', 'at': '\%#}'})
call lexima#add_rule({'char': '[', 'at': '\%#]'})

call lexima#add_rule({'char': '<BS>', 'at': '(\%#)', 'input': '<BS><Del>'})
call lexima#add_rule({'char': '<BS>', 'at': '{\%#}', 'input': '<BS><Del>'})
call lexima#add_rule({'char': '<BS>', 'at': '[\%#]', 'input': '<BS><Del>'})

call lexima#add_rule({'char': "'", 'at': "''\%#"})
call lexima#add_rule({'char': '"', 'at': '""\%#'})
