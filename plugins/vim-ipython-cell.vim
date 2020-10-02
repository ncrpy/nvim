" screenを使う
let g:slime_target = "screen"
" ipythonを使う
let g:slime_python_ipython = 1
" セルの区切り文字を指定
let g:slime_cell_delimiter = "# %%"

" 環境変数 $STY から GNU Screen のセッション名を取得する
let g:slime_default_config = {"sessionname": $STY, "windowname": "ipython3"}
" 接続先情報はユーザ入力させない
let g:slime_dont_ask_default = 1

" mappings
"" 選択範囲を実行
xmap <F5> <Plug>SlimeRegionSend
nmap <F5> <Plug>SlimeParagraphSend
"" セルを実行
nnoremap <F6> :IPythonCellExecuteCellVerbose<CR>
"" セルを実行して次のセルへ移動
nnoremap <C-M> :IPythonCellExecuteCellVerboseJump<CR>
