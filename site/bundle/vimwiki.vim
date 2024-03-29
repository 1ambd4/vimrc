let g:vimwiki_path = get(g:, 'vimwiki_path', '~/.vim/wiki')

let g:vimwiki_list = [{'path': g:vimwiki_path, 'ext': '.wiki'}]
" let g:vimwiki_list = [{'path': g:vimwiki_path, 'syntax':'markdown', 'ext': '.md'}]

let g:vimwiki_ext2syntax = {}
let g:vimwiki_global_ext = 0

let g:vimwiki_conceallevel = 2
let g:vimwiki_conceal_onechar_markers = 1
let g:vimwiki_conceal_pre = 1

let g:vimwiki_listsyms = ' ○◐●✓'

" seems conflict with colorscheme, so need put after it in vimrc
" hi VimwikiHeader2 guifg=#D79921
" hi VimwikiHeader2 guifg=#689D6A
" hi VimwikiHeader3 guifg=#B16286
" hi VimwikiHeader4 guifg=#98971A
" hi VimwikiHeader5 guifg=#458588
" hi VimwikiHeader6 guifg=#CC241D


"----------------------------------------------------------------------
" global
"----------------------------------------------------------------------
nmap <space>ww <Plug>VimwikiIndex
nmap <space>wt <Plug>VimwikiTabIndex
nmap <space>ws <Plug>VimwikiUISelect
nmap <space>wi <Plug>VimwikiDiaryIndex

nmap <space>w<space>w <Plug>VimwikiMakeDiaryNote
nmap <space>w<space>t <Plug>VimwikiTabMakeDiaryNote
nmap <space>w<space>y <Plug>VimwikiMakeYesterdayDiaryNote
nmap <space>w<space>m <Plug>VimwikiMakeTomorrowDiaryNote


"----------------------------------------------------------------------
" local - normal
"----------------------------------------------------------------------
nmap <space>wh  <Plug>Vimwiki2HTML
nmap <space>whh <Plug>Vimwiki2HTMLBrowse

nmap <space>w<space>i <Plug>VimwikiDiaryGenerateLinks

nmap <space>wl  <Plug>VimwikiToggleListItem

nmap <space>wd <Plug>VimwikiDeleteLink
nmap <space>wr <Plug>VimwikiRenameLink

nmap <m-q> <Plug>VimwikiGoBackLink
nmap <m-N> <Plug>VimwikiNextLink
nmap <m-P> <Plug>VimwikiPrevLink
nmap <m-/> <Plug>VimwikiToggleListItem


"----------------------------------------------------------------------
" local - insert
"----------------------------------------------------------------------
imap <m-p> <Plug>VimwikiListPrevSymbol
imap <m-n> <Plug>VimwikiListNextSymbol
imap <m-;> <Plug>VimwikiListToggle


imap <m-.> <Plug>VimwikiIncreaseLvlSingleItem
imap <m-,> <Plug>VimwikiDecreaseLvlSingleItem



"----------------------------------------------------------------------
" K menu
"----------------------------------------------------------------------
let g:vimwiki_k_context = [
			\ ["Go &Back Link\tAlt+q", "normal \<Plug>VimwikiGoBackLink"],
			\ ['--'],
			\ ["&Next Link\tAlt+Shift+n", "normal \<Plug>VimwikiNextLink"],
			\ ["&Prev Link\tAlt+Shift+p", "normal \<Plug>VimwikiPrevLink"],
			\ ["&Delete Link\t<space>wd", "normal \<Plug>VimwikiDeleteLink"],
			\ ["&Rename Link\t<space>wr", "normal \<Plug>VimwikiRenameLink"],
			\ ['--'],
			\ ["&Toggle Checkbox\tAlt+/", "normal \<Plug>VimwikiToggleListItem"],
			\ ["Remove &Checkbox\tgl<space>", "normal \<Plug>VimwikiRemoveSingleCB"],
			\ ]


"----------------------------------------------------------------------
"
"----------------------------------------------------------------------
function! s:local_setup()
	silent! unmap =p
	silent! unmap =P
	silent! unmap =o
	silent! unmap =op
	silent! nmap <buffer> <m-N> <Plug>VimwikiNextLink
	silent! nmap <buffer> <m-P> <Plug>VimwikiPrevLink
	nnoremap <buffer> <silent>K :call quickui#tools#clever_context('wk', g:vimwiki_k_context, {})<cr>
endfunc

function! s:fix_markdown()
	" au BufNewFile,BufRead *.md setlocal filetype=markdown
endfunc

augroup VimwikiCustomizeEvent
	au!
	au FileType vimwiki call s:local_setup()
	au VimEnter * call s:fix_markdown()
augroup END
