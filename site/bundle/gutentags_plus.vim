"----------------------------------------------------------------------
" keymap
"----------------------------------------------------------------------
" :GscopeFind {querytype} {name}
" 0 or s: Find this symbol
" 1 or g: Find this definition
" 2 or d: Find functions called by this function
" 3 or c: Find functions calling this function
" 4 or t: Find this text string
" 6 or e: Find this egrep pattern
" 7 or f: Find this file
" 8 or i: Find files #including this file
" 9 or a: Find places where this symbol is assigned a value

nnoremap <space>gs :GscopeFind s <C-R><C-W><cr>
nnoremap <space>gg :GscopeFind g <C-R><C-W><cr>
nnoremap <space>gc :GscopeFind c <C-R><C-W><cr>
nnoremap <space>gt :GscopeFind t <C-R><C-W><cr>
nnoremap <space>ge :GscopeFind e <C-R><C-W><cr>
nnoremap <space>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
nnoremap <space>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
nnoremap <space>gd :GscopeFind d <C-R><C-W><cr>
nnoremap <space>ga :GscopeFind a <C-R><C-W><cr>
nnoremap <space>gz :GscopeFind z <C-R><C-W><cr>

autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>
