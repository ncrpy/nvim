let g:deoplete#enable_at_startup = 1

inoremap <expr><Tab> pumvisible() ? "\<DOWN>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<UP>" : "\<S-Tab>"

call deoplete#custom#var('omni', 'input_patterns', {
    \ 'r': '[^. *\t]\.\w*',
\})
