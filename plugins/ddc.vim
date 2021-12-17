" Customize global settings
call ddc#custom#patch_global('sources', ['tabnine', 'nvim-lsp', 'file', 'neosnippet'])

call ddc#custom#patch_global('sourceOptions', {
    \   '_': {
    \     'minAutoCompleteLength': 1,
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank'],
    \   },
    \ })

" Change source options
call ddc#custom#patch_global('sourceOptions', {
    \   'file': {
    \     'mark': 'F',
    \     'isVolatile': v:true,
    \     'forceCompletionPattern': '\S/\S*',
    \   },
    \   'neosnippet': {
    \     'mark': 'NS',
    \     'dup': v:true,
    \   },
    \   'nvim-lsp': {
    \     'mark': 'LSP',
    \     'forceCompletionPattern': '\.\w*|:\w*|->\w*'
    \   },
    \   'tabnine': {
    \     'mark': 'TN',
    \     'maxCandidates': 5,
    \     'isVolatile': v:true,
    \     'minAutoCompleteLength': 0,
    \   },
    \ })
call ddc#custom#patch_global('backspaceCompletion', v:true)

" Customize settings on a filetype
call ddc#custom#patch_filetype(['ps1', 'dosbatch', 'autohotkey', 'registry'], {
    \   'sourceOptions': {
    \     'file': {
    \       'forceCompletionPattern': '\S\\\S*',
    \     },
    \   },
    \   'sourceParams': {
    \     'file': {
    \       'mode': 'win32',
    \     },
    \   },
    \ })

" Mappings

" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ ddc#map#pum_visible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  ddc#map#pum_visible() ? '<C-p>' : '<C-h>'

" Use ddc
call ddc#enable()
