"----------------------------------------------------------------------
" packages begin
"----------------------------------------------------------------------
if !exists('g:bundle_group')
	let g:bundle_group = []
endif

let g:bundle_enabled = {}
for key in g:bundle_group | let g:bundle_enabled[key] = 1 | endfor
let s:enabled = g:bundle_enabled


" call plug#begin()
call plug#begin('~/.vim/bundles')


"----------------------------------------------------------------------
" package group - basic
"----------------------------------------------------------------------
if has_key(s:enabled, 'basic')

    Plug 'mhinz/vim-startify'
    Plug 'ghifarit53/tokyonight-vim'
    Plug 'easymotion/vim-easymotion'

    Plug 'editorconfig/editorconfig-vim'
    Plug 'LunarWatcher/auto-pairs'
    Plug 'tpope/vim-commentary'

    Plug 'kshenoy/vim-signature'
    Plug 'mhinz/vim-signify'

	Plug 'preservim/nerdtree', {'on': ['NERDTree', 'NERDTreeFocus', 'NERDTreeToggle'] }
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	IncScript site/bundle/nerdtree.vim

    Plug 'preservim/tagbar'
	IncScript site/bundle/tagbar.vim

    Plug 'Shougo/echodoc.vim'
    " set cmdheight=2
    " let g:echodoc#type = "echo"
    let g:echodoc#enable_at_startup = 1
    let g:echodoc#type = "popup"

	Plug 'dense-analysis/ale'
	IncScript site/bundle/ale.vim

    if has('nvim')
      Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
      Plug 'Shougo/deoplete.nvim'
      Plug 'roxma/nvim-yarp'
      Plug 'roxma/vim-hug-neovim-rpc'
    endif
    let g:deoplete#enable_at_startup = 1

	let g:gutentags_modules = []
	" if executable('ctags')
	" 	let g:gutentags_modules += ['ctags']
	" endif
	if executable('gtags-cscope') && executable('gtags')
		let g:gutentags_modules += ['gtags_cscope']
	endif
	if len(g:gutentags_modules) > 0
		" Plug 'ludovicchabant/vim-gutentags'
		Plug 'skywind3000/vim-gutentags'
        Plug 'skywind3000/gutentags_plus'
        IncScript site/bundle/gutentags_plus.vim
        Plug 'skywind3000/vim-preview'
	endif

endif


"----------------------------------------------------------------------
" package group - cpp
"----------------------------------------------------------------------
if has_key(s:enabled, 'cpp')

    Plug 'Shougo/deoplete-clangx'
    Plug 'pboettch/vim-cmake-syntax', { 'for': ['cmake'] }

    Plug 'Freed-Wu/cppinsights.vim'
    let g:cppinsights#extra_args = " -- -std=c++17"

	if !has_key(s:enabled, 'syntax-extra')
		Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['c', 'cpp'] }
	else
		Plug 'justinmk/vim-syntax-extra', { 'for': ['c', 'bison', 'flex', 'cpp'] }
	endif
	let g:cpp_class_scope_highlight = 1
	let g:cpp_member_variable_highlight = 1
	let g:cpp_class_decl_highlight = 1
	let g:cpp_experimental_simple_template_highlight = 1
	let g:cpp_concepts_highlight = 1
	let g:cpp_no_function_highlight = 1
	let g:cpp_posix_standard = 1

endif


"----------------------------------------------------------------------
" package group - rust
"----------------------------------------------------------------------
if has_key(s:enabled, 'rust')

    Plug 'rust-lang/rust.vim'
    " let g:rustfmt_autosave = 1

    Plug 'racer-rust/vim-racer'
    let g:racer_experimental_completer = 1
    let g:racer_insert_paren = 1

endif


"----------------------------------------------------------------------
" package group - go
"----------------------------------------------------------------------
if has_key(s:enabled, 'go')

    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
	IncScript site/bundle/vim-go.vim

endif


"----------------------------------------------------------------------
" package group - python
"----------------------------------------------------------------------
if has_key(s:enabled, 'python')

    Plug 'deoplete-plugins/deoplete-jedi'

endif


"----------------------------------------------------------------------
" package group - huge
"----------------------------------------------------------------------
if has_key(s:enabled, 'huge')

    " learderf
	if has('python3') || has('python')
		Plug 'Yggdroot/LeaderF'
		Plug 'tamago324/LeaderF-filer'
		Plug 'voldikss/LeaderF-emoji'
		IncScript site/bundle/leaderf.vim
	else
		Plug 'ctrlpvim/ctrlp.vim'
		Plug 'tacahiroy/ctrlp-funky'
		let g:ctrlp_map = ''
		noremap <c-p> :cclose<cr>:CtrlP<cr>
		noremap <c-n> :cclose<cr>:CtrlPMRUFiles<cr>
		noremap <m-p> :cclose<cr>:CtrlPFunky<cr>
		noremap <m-n> :cclose<cr>:CtrlPBuffer<cr>
	endif

    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'

    Plug 'francoiscabrol/ranger.vim'
    let g:ranger_map_keys = 0

endif


"----------------------------------------------------------------------
" package group - opt
"----------------------------------------------------------------------
if has_key(s:enabled, 'opt')
	Plug 'vimwiki/vimwiki'
	IncScript site/bundle/vimwiki.vim

    Plug 'google/vimdoc'

    Plug 'sbdchd/neoformat'

    Plug 'skywind3000/asyncrun.vim'
    IncScript site/bundle/asyncrun.vim
endif


"----------------------------------------------------------------------
" modules
"----------------------------------------------------------------------

" coc
if has_key(s:enabled, 'coc')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	IncScript site/bundle/coc.vim
endif

" vim-lsp
if has_key(s:enabled, 'lsp')
	Plug 'prabirshrestha/vim-lsp'
	Plug 'prabirshrestha/asyncomplete.vim'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'
	Plug 'mattn/vim-lsp-settings'
	Plug 'prabirshrestha/asyncomplete-buffer.vim'
	Plug 'prabirshrestha/asyncomplete-tags.vim'
	Plug 'jsit/asyncomplete-user.vim'
	IncScript site/bundle/lsp.vim
endif

" vimspector
if has_key(s:enabled, 'vimspector')
	Plug 'puremourning/vimspector'
	IncScript site/bundle/vimspector.vim
endif


call plug#end()
