map <F9> :call CompileAndRun()<CR>
func! CompileAndRun()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -std=c20 -Wall -g3 -ggdb -DLOCAL -o %<.o"
        exec "!time ./%<.o"
    elseif &filetype == 'cpp'
        exec "!clang++ % -std=c++20 -Wall -g3 -ggdb -DLOCAL -o %<.o"
        exec "!time ./%<.o"
    elseif &filetype == 'go'
        exec "!time go run %"
    elseif &filetype == 'rust'
        exec "!time rustc % -o %<.o"
        exec "!time ./%<.o"
    elseif &filetype == 'java'
        exec "!java %"
    elseif &filetype == 'python'
        exec "!time python %"
    elseif &filetype == 'scheme'
        exec "!time scheme < %"
    endif
endfunc


" template
"   BufNewFile  each time edit a new file
"   silent!     execute silently, no error message if failed
"   0r          read file and insert content at top into the new file
if has("autocmd")
    autocmd BufNewFile *.* silent! 0r ~/.vim/templates/skeleton.%:e
endif

" remember last update or view postion
" Only do this part when compiled with support for autocommands
if has("autocmd")
   " When editing a file, always jump to the last cursor position
   autocmd BufReadPost *
   \ if line("'\"") > 0 && line ("'\"") <= line("$") |
   \ exe "normal g'\"" |
   \ endif
endif
