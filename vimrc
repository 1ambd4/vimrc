source ~/.vim/init.vim

let g:bundle_group = ['basic', 'huge', 'cpp', 'rust']
source ~/.vim/bundle.vim

hi VimwikiHeader1 guifg=#D79921
hi VimwikiHeader2 guifg=#689D6A
hi VimwikiHeader3 guifg=#B16286
hi VimwikiHeader4 guifg=#98971A
hi VimwikiHeader5 guifg=#458588
hi VimwikiHeader6 guifg=#CC241D

" tpope/vim-commentary
autocmd FileType c,cpp,rust,go,java     setlocal commentstring=//\ %s
