let g:ale_linters = {
    \ 'python': [],
    \ }

let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'c': ['clang-format'],
    \ 'cpp': ['clang-format'],
    \ 'python': ['black', 'isort'],
    \ }

" let g:ale_python_flake8_executable = g:python3_host_prog
" let g:ale_python_flake8_options = '-m flake8'
" let g:ale_python_autopep8_executable = g:python3_host_prog
" let g:ale_python_autopep8_options = '-m autopep8'
let g:ale_python_isort_executable = g:python3_host_prog
let g:ale_python_isort_options = '-m isort'
let g:ale_python_black_executable = g:python3_host_prog
let g:ale_python_black_options = '-m black'

let g:ale_c_clangformat_options = '-style="{IndentWidth: 4}"'

let g:ale_completion_enabled = 0
let g:ale_disable_lsp = 1
let g:ale_fix_on_save = 1
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

nmap <silent> <C-p> <Plug>(ale_previous_wrap)
nmap <silent> <C-n> <Plug>(ale_next_wrap)
