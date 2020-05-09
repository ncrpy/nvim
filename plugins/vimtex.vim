let g:vimtex_compiler_progname = 'nvr'

let g:vimtex_compiler_latexmk = {
      \ 'background': 0,
      \ 'build_dir': '',
      \ 'continuous': 1,
      \ 'options': [
      \    '-pdfdvi',
      \    '-verbose',
      \    '-file-line-error',
      \    '-synctex=1',
      \    '-interaction=nonstopmode',
      \],
      \}

" enable/disable vimtex integration >
let g:airline#extensions#vimtex#enabled = 1

" left and right delimiters (shown only when status string is not empty) >
let g:airline#extensions#vimtex#left = "{"
let g:airline#extensions#vimtex#right = "}"

" State indicators:

" the current tex file is the main project file
" (nothing is shown by default) >
let g:airline#extensions#vimtex#main = ""

" the current tex file is a subfile of the project
" and the compilation is set for the main file >
let g:airline#extensions#vimtex#sub_main = "m"

" the current tex file is a subfile of the project
" and the compilation is set for this subfile >
let g:airline#extensions#vimtex#sub_local = "l"

" single compilation is running >
let g:airline#extensions#vimtex#compiled = "c₁"

" continuous compilation is running >
let g:airline#extensions#vimtex#continuous = "c"

" viewer is opened >
let g:airline#extensions#vimtex#viewer = "v"

