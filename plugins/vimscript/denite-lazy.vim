call devicons#plugins#denite#init()

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select')
  nnoremap <silent><buffer><expr> <BS>
  \ denite#do_map('move_up_path')
endfunction

autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
  imap <silent><buffer> <C-o> <Plug>(denite_filter_quit)
endfunction

let s:denite_winwidth = 0.75
let s:denite_winheight = 0.75

" Change denite default options.
call denite#custom#option('default', {
    \ 'split': 'floating',
    \ 'winwidth': float2nr(&columns * s:denite_winwidth),
    \ 'wincol': float2nr((&columns * (1 - s:denite_winwidth)) / 2),
    \ 'winheight': float2nr(&lines * s:denite_winheight),
    \ 'winrow': float2nr((&lines * (1 - s:denite_winheight)) / 2),
    \ })

" Change file/rec command.
call denite#custom#var('file/rec', 'command',
\ ['rg', '--files', '--glob', '!.git', '--color', 'never'])

" Change matchers.
call denite#custom#source(
\ 'file_mru', 'matchers', ['matcher/fuzzy', 'matcher/project_files'])
call denite#custom#source(
\ 'file/rec', 'matchers', ['matcher/cpsm'])

" Change sorters.
call denite#custom#source(
\ 'file/rec', 'sorters', ['sorter/sublime'])

" Change default action.
call denite#custom#kind('file', 'default_action', 'split')

" Add custom menus
let s:menus = {}

let s:menus.zsh = {
    \ 'description': 'Edit your import zsh configuration'
    \ }
let s:menus.zsh.file_candidates = [
    \ ['zshrc', '~/.zshrc'],
    \ ]

let s:menus.my_commands = {
    \ 'description': 'Example commands'
    \ }
let s:menus.my_commands.command_candidates = [
    \ ['Split the window', 'vnew'],
    \ ['Open zsh menu', 'Denite menu:zsh'],
    \ ['Format code', 'FormatCode', 'go,python'],
    \ ]

call denite#custom#var('menu', 'menus', s:menus)

" Ripgrep command on grep source
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
        \ ['-i', '--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" Specify multiple paths in grep source
"call denite#start([{'name': 'grep',
"      \ 'args': [['a.vim', 'b.vim'], '', 'pattern']}])

" Define alias
call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])

call denite#custom#alias('source', 'file/rec/py', 'file/rec')
call denite#custom#var('file/rec/py', 'command',
\ ['scantree.py', '--path', ':directory'])

" Change ignore_globs
call denite#custom#filter('matcher/ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])

" Custom action
" Note: lambda function is not supported in Vim8.
call denite#custom#action('file', 'test',
      \ {context -> execute('let g:foo = 1')})
call denite#custom#action('file', 'test2',
      \ {context -> denite#do_action(
      \  context, 'open', context['targets'])})
