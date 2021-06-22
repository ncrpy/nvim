lua require("plugins.nvim-lsp")

autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc

" BUG - formatting duplicate the last line when it has fix"
" autocmd BufWritePre *.py lua vim.lsp.buf.formatting()
" nnoremap <silent> ff <cmd>lua vim.lsp.buf.formatting()<CR>
