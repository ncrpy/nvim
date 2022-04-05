function! s:skkeleton_init() abort
  call skkeleton#config({
    \   'eggLikeNewline': v:true,
    \   'globalJisyo': "~/.skk/SKK-JISYO.L",
    \   'markerHenkan': "▽ ",
    \   'markerHenkanSelect': "▼ ",
    \ })
  call skkeleton#register_kanatable('rom', {
    \ "z\<Space>": ["\u3000", ''],
    \ })
endfunction
augroup skkeleton-initlaize-pre
    autocmd!
    autocmd User skkeleton-initialize-pre call s:skkeleton_init()
augroup END

augroup skkeleton-mode-changed
    autocmd!
    autocmd User skkeleton-mode-changed redrawstatus
augroup END

autocmd User skkeleton-enable-pre call s:skkeleton_pre()
function! s:skkeleton_pre() abort
" Overwrite sources
let s:prev_buffer_config = ddc#custom#get_buffer()
call ddc#custom#patch_buffer('sources', ['skkeleton'])
call ddc#custom#patch_buffer('sourceOptions', {
    \   '_': {
    \     'matchers': ['matcher_head'],
    \     'sorters': ['sorter_rank'],
    \   },
    \   'skkeleton': {
    \     'mark': 'skkeleton',
    \     'matchers': ['skkeleton'],
    \     'sorters': [],
    \     'minAutoCompleteLength': 1,
    \   },
    \ })
endfunction

autocmd User skkeleton-disable-pre call s:skkeleton_post()
function! s:skkeleton_post() abort
" Restore sources
call ddc#custom#set_buffer(s:prev_buffer_config)
endfunction
