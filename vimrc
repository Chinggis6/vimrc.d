" put in /etc/vimrc
" to source /usr/local/etc/vimrc.d

runtime! archlinux.vim
let $vimrtd='/usr/local/etc'
set rtp+=$vimrtd " contains map.vim and pmap.vim; rtp=runtimepath; adds delimiter automatically
runtime! vimrc.d/*.vim " without ! only sources first found file
set cpoptions+=$ " cpo

let g:xml_syntax_folding=1

set sm " showmatch; briefly jump to the matching opening bracket on insert (of closing bracket)
" set mps+=<:>,“:” " matchpairs; Match other marks too on % key press
set ar " autoread; autoreload when file is changed within session
set report=0 " report messages like '1 line less' even if just one line is changed; default is 2
"set gcr=a:blinkon0 " guicursor; no cursor blinking

" Disable automatic commenting on new line insertion
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set title " show file name and its modification state in window title


" set so=5 "scrolloff; default 0
" set siso=5 "sidescrolloff; default 0
" keep lines off when scrolling
" affects zb/z- zz/z. zt/z<cr>

"set cul "cursorline; highlight
" set cuc "cursorcolumn

" set sbr=>> "showbreak; line break indicator

" **********************************************************************************************************************************************************

set hi=10000 "history; larger command history; default is 50

set spr "splitright; put new window to the right instead of left of the current one on vertical split

" set splitbelow "sb; same but below instead of above for horizontal splits

"set vbs=1 " verbose
