let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
command! -nargs=1 IncScript exec 'so '. fnameescape(s:home."/<args>")
exec 'set rtp+='. fnameescape(s:home)
exec 'set rtp+=~/.vim'

IncScript init/init.vim
IncScript init/ignores.vim
IncScript init/plugins.vim
IncScript init/keymaps.vim
IncScript init/status.vim
IncScript init/functions.vim
