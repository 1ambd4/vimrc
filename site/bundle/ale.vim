"----------------------------------------------------------------------
" ale
"----------------------------------------------------------------------
let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 100
let g:ale_lint_delay = 1000
let g:ale_echo_msg_format = '[%linter%] %code: %%s [%severity%]'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:ale_virtualtext_cursor = 0


"----------------------------------------------------------------------
" wrapper
"----------------------------------------------------------------------
let g:airline#extensions#ale#enabled = 1


"----------------------------------------------------------------------
" linters
"----------------------------------------------------------------------
let g:ale_linters = {
			\ 'c': ['gcc', 'cppcheck'],
			\ 'cpp': ['gcc', 'cppcheck'],
            \ 'rust': ['rustc', 'analyzer'],
			\ 'python': ['flake8', 'pylint'],
			\ 'lua': ['luac'],
			\ 'go': ['go build', 'gofmt'],
			\ 'java': ['javac'],
			\ 'javascript': ['eslint'],
			\ }

let s:platform = ''

let g:ale_c_gcc_options = '-Wall -O2 -std=c17 ' . s:platform
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++17 ' . s:platform
let g:ale_c_clang_options = '-Wall -O2 ' . s:platform
let g:ale_cpp_clang_options = '-Wall -O2 ' . s:platform
let g:ale_c_cc_options = '-Wall -std=c17 ' . s:platform
let g:ale_cpp_cc_options = '-Wall -std=c++17 ' . s:platform
let g:ale_lua_luacheck_options = '-d'

if executable('gcc') == 0 && executable('clang')
	let g:ale_linters.c += ['clang']
	let g:ale_linters.cpp += ['clang']
endif

" let g:ale_linters.text = ['textlint', 'write-good', 'languagetool']
" let g:ale_linters.lua += ['luacheck']

"----------------------------------------------------------------------
" cppcheck
"----------------------------------------------------------------------
let s:cppcheck = '--enable=warning,style,portability,performance'


" let s:cppcheck .= ' --inline-suppr'
let g:ale_c_cppcheck_options = s:cppcheck
let g:ale_cpp_cppcheck_options = s:cppcheck
