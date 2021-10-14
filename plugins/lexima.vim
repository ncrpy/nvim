" call lexima#add_rule({'char': '<', 'input_after': '>'})
" call lexima#add_rule({'char': '<', 'at': '\\\%#'})
" call lexima#add_rule({'char': '>', 'at': '\%#>', 'leave': 1})
" call lexima#add_rule({'char': '<BS>', 'at': '<\%#>', 'delete': 1})

" Complete parentheses (defined by default) in case of 'except'.
" Re-define rules to do nothing.
call lexima#add_rule({'char': '(', 'except': '\%#\%\($\|\s\|[)}\]"''`]\)'})
call lexima#add_rule({'char': '{', 'except': '\%#\%\($\|\s\|[)}\]"''`]\)'})
call lexima#add_rule({'char': '[', 'except': '\%#\%\($\|\s\|[)}\]"''`]\)'})
call lexima#add_rule({'char': '"', 'except': '\%#\%\($\|\s\|[)}\]"''`]\)'})
call lexima#add_rule({'char': "'", 'except': '\%#\%\($\|\s\|[)}\]"''`]\)'})
call lexima#add_rule({'char': '`', 'except': '\%#\%\($\|\s\|[)}\]"''`]\)'})

call lexima#add_rule({'char': '"', 'at': '""\%#'})
call lexima#add_rule({'char': "'", 'at': "''\%#"})
call lexima#add_rule({'char': '`', 'at': '``\%#'})

call lexima#add_rule({'char': '$', 'input_after': '$', 'filetype': 'tex'})
call lexima#add_rule({'char': '$', 'at': '\%#\$', 'leave': 1, 'filetype': 'tex'})
call lexima#add_rule({'char': '<BS>', 'at': '\$\%#\$', 'delete': 1, 'filetype': 'tex'})
