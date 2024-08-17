"----------------------------------------------------------------------
" core initialize
"----------------------------------------------------------------------
set nocompatible

set clipboard=unnamedplus
set autoindent
set smartindent

set wildignore=*.swp,*.bak,*.pyc,*.obj,*.o,*.class
set display=lastline

set backspace=eol,start,indent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

set number
set ruler
set cursorline

set ignorecase
set smartcase

set incsearch
set hlsearch

set foldenable
set foldmethod=syntax
set nofoldenable
set foldcolumn=0
set foldlevel=1

set background=dark
set t_Co=256

syntax enable
syntax on

" ctags
" set tags=tags;
" set tags+=~/.vim/tags/cpp/tags

set undofile
if !isdirectory($HOME.'/.vim/undo/')
  call mkdir($HOME.'/.vim/undo/')
endif
set undodir=~/.vim/undo

set showcmd
set noshowmode
set cmdheight=1

colorscheme habamax

set tags=./tags;,tags


"----------------------------------------------------------------------
" map CTRL_HJKL to move cursor in all mode
" config terminal bind <backspace> to ASCII code 127
"----------------------------------------------------------------------
" noremap <C-h> <left>
" noremap <C-j> <down>
" noremap <C-k> <up>
" noremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>


"----------------------------------------------------------------------
" tab keymap
"----------------------------------------------------------------------
noremap <silent>\tc :tabnew<cr>
noremap <silent>\tq :tabclose<cr>
noremap <silent>\tn :tabnext<cr>
noremap <silent>\tp :tabprev<cr>
noremap <silent>\to :tabonly<cr>
noremap <silent>\th :-tabmove<cr>
noremap <silent>\tl :+tabmove<cr>
noremap <silent>\ta g<tab>
noremap <silent>\1 :tabn 1<cr>
noremap <silent>\2 :tabn 2<cr>
noremap <silent>\3 :tabn 3<cr>
noremap <silent>\4 :tabn 4<cr>
noremap <silent>\5 :tabn 5<cr>
noremap <silent>\6 :tabn 6<cr>
noremap <silent>\7 :tabn 7<cr>
noremap <silent>\8 :tabn 8<cr>
noremap <silent>\9 :tabn 9<cr>
noremap <silent>\0 :tabn 10<cr>


"----------------------------------------------------------------------
" miscs
"----------------------------------------------------------------------
set showmatch
set matchtime=3

" set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<

" window management
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
" noremap <leader>z :tab split<cr>
noremap <silent>\ts :tab split<cr>
" noremap <tab>h <c-w>h
" noremap <tab>j <c-w>j
" noremap <tab>k <c-w>k
" noremap <tab>l <c-w>l
noremap <tab>w <c-w>w
noremap <tab>c <c-w>c
noremap <tab>+ <c-w>+
noremap <tab>- <c-w>-
noremap <tab>, <c-w><
noremap <tab>. <c-w>>
noremap <tab>= <c-w>=
noremap <tab>s <c-w>s
noremap <tab>v <c-w>v
noremap <tab>o <c-w>o
noremap <tab>p <c-w>p


noremap <leader>y "+y
noremap <leader>p "+p
