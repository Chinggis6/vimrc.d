Plug 'junegunn/rainbow_parentheses.vim'

Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'Firef0x/PKGBUILD.vim'

Plug 'tpope/vim-commentary'

Plug 'blueyed/vim-diminactive'

Plug 'kana/vim-operator-user' " dep
Plug 'haya14busa/vim-operator-flashy'
map y <Plug>(operator-flashy)
nmap Y <Plug>(operator-flashy)$

Plug 'bling/vim-bufferline'
" let g:airline#extensions#bufferline#enabled = 1
" ^ default from airline
let g:bufferline_echo = 0
" show only in airline, not on command bar (status line)

Plug 'sandeepcr529/Buffet.vim'

Plug 'scrooloose/nerdtree'

let NERDTreeQuitOnOpen=1 " quit after opening file
let NERDTreeIgnore = ['\.png$','\.jpg$','\.gif$','\.mp3$','\.flac$', '\.ogg$', '\.mp4$','\.avi$','.webm$','.mkv$','\.pdf$', '\.zip$', '\.tar.gz$', '\.rar$', '\.swp$'] " ignore multimedia files and so
let NERDTreeShowHidden=1 " show hidden files too
let NERDTreeMinimalUI=1 " hides "Press ? for help"
let NERDTreeHighlightCursorline=1 " highlight current
" let g:NERDTreeWinPos = 'right' " open sidebar to right r/t left
let NERDTreeMouseMode=2 " single click to expand directories, double click to open files

" Focus on current file in Nerd Tree
noremap <silent> <LocalLeader>t :NERDTreeFind<CR>

" Focus on Nerd Tree, open if closed
" noremap <silent> <LocalLeader>T :NERDTreeFocus<CR>

" install ctags from Extra; :TaggbarToggle
Plug 'majutsushi/tagbar'
" supported languages: http://ctags.sourceforge.net/languages.html
autocmd BufEnter,FileType python :TagbarOpen<CR>
autocmd BufEnter *.vim :TagbarOpen<CR> " .vim scripts & plugins

Plug 'aquach/vim-mediawiki-editor'
" let g:mediawiki_editor_url='en.wikipedia.org'
let g:mediawiki_editor_url='commons.wikimedia.org'
let g:mediawiki_editor_path='/w/'
let g:mediawiki_editor_username='Chinggis6'

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" Usage : gaip*<space> (go align internal paragraph all fields)

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'rhysd/clever-f.vim'
" highlights and extends

Plug 'junegunn/vim-peekaboo'
" registers

Plug 'kshenoy/vim-signature'
" marks: m, dm (delete), ` (jump to character), ' (jump to beginning of line)
" http://vim.wikia.com/wiki/Using_marks
" :delmarks! :marks

Plug 'tpope/vim-repeat'
" repeat extended to plugins

Plug 'haya14busa/incsearch.vim'
" improved incremental searching

Plug 'haya14busa/incsearch-fuzzy.vim'
" incremental fuzzy search extension

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" :h g:incsearch#auto_nohlsearch
" set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" Fuzzy search
" map z/ <Plug>(incsearch-fuzzy-/)
" map z? <Plug>(incsearch-fuzzy-?)
" map zg/ <Plug>(incsearch-fuzzy-stay)

" Fuzzyspell search
" map z/ <Plug>(incsearch-fuzzyspell-/)
" map z? <Plug>(incsearch-fuzzyspell-?)
" map zg/ <Plug>(incsearch-fuzzyspell-stay)

" Fuzzy search and fuzzyspell together

function! s:config_fuzzyall(...) abort
	return extend(copy({
	\   'converters': [
	\     incsearch#config#fuzzy#converter(),
	\     incsearch#config#fuzzyspell#converter()
	\   ],
	\ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> z/ incsearch#go(<SID>config_fuzzyall())
noremap <silent><expr> z? incsearch#go(<SID>config_fuzzyall({'command': '?'}))
noremap <silent><expr> zg? incsearch#go(<SID>config_fuzzyall({'is_stay': 1}))

Plug 'vim-scripts/openvpn'

au BufNewFile,BufRead *.ovpn setfiletype openvpn | set commentstring=#%s

Plug 'thiderman/vim-supervisor'
au BufNewFile,BufRead supervisord.conf setf supervisor | set cms=;%s

Plug 'vim-scripts/syslog-syntax-file'
Plug 'vim-scripts/pacmanlog.vim'
au BufNewFile,BufRead /var/log/pacman.log setf pacmanlog | set cms=#%s

Plug 'vim-scripts/httplog'

" Plug 'Valloric/YouCompleteMe'
" Plug 'Shougo/neocomplete.vim'

Plug 'jimmay5469/vim-spacemacs'

Plug 'hecal3/vim-leader-guide'
" :LeaderGuide ' '

Plug 'terryma/vim-multiple-cursors'

Plug 'kchmck/vim-coffee-script'

" Plug 'ryanoasis/vim-devicons'

" VIM TIPS
" ^R =$env insert environment variable in Ex mode
" .;+3s/3/30/g current line and three lines down; :h range; http://vimhelp.appspot.com/cmdline.txt.html#%3Arange
" vim -x to encrypt file; :help cm; set cm=blowfish2; :h cryptmethod

Plug 'tpope/vim-eunuch' " vim helpers for unix
Plug 'majutsushi/tagbar' " community/vim-tagbar
