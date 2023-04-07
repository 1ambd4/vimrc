"----------------------------------------------------------------------
" functions
"----------------------------------------------------------------------
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')


"----------------------------------------------------------------------
" tokyonight
"----------------------------------------------------------------------
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1


"----------------------------------------------------------------------
" netrw
"----------------------------------------------------------------------
let g:netrw_liststyle = 1
let g:netrw_winsize = 25
let g:netrw_list_hide = '\.swp\($\|\t\),\.py[co]\($\|\t\),\.o\($\|\t\),\.bak\($\|\t\),\(^\|\s\s\)\zs\.\S\+'
let g:netrw_sort_sequence = '[\/]$,*,\.bak$,\.o$,\.info$,\.swp$,\.obj$'
let g:netrw_preview = 0
"let g:netrw_special_syntax = 1
let g:netrw_sort_options = 'i'


"----------------------------------------------------------------------
" TagList
"----------------------------------------------------------------------
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 28
let Tlist_Inc_Winwidth = 0
let Tlist_Enable_Fold_Column = 0
let Tlist_Show_Menu = 0
let Tlist_GainFocus_On_ToggleOpen = 1


"----------------------------------------------------------------------
" vim-notes
"----------------------------------------------------------------------
let g:notes_directories = ['~/.vim/notes']


"----------------------------------------------------------------------
" delimitmate
"----------------------------------------------------------------------
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_offByDefault = 1


"----------------------------------------------------------------------
" gutentags
"----------------------------------------------------------------------
let $GTAGSLABEL = 'native-pygments'
let g:gutentags_project_root = ['.root', '.svn', '.git']
let g:gutentags_ctags_tagfile = '.tags'

" let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_modules = ['gtags_cscope']
if exists('g:gutentags_cache_dir') == 0
	let g:gutentags_cache_dir = expand('~/.cache/tags')
endif

if !isdirectory(g:gutentags_cache_dir)
	call mkdir(g:gutentags_cache_dir, 'p')
endif

" let g:gutentags_ctags_extra_args = []
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
" let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
" let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

let g:gutentags_auto_add_gtags_cscope = 0
let g:gutentags_define_advanced_commands = 1

" let g:gutentags_define_advanced_commands = 1

" if has('win32') || has('win16') || has('win64') || has('win95')
" 	let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" endif

let g:gutentags_plus_switch = 1
