syntax on
filetype on
filetype plugin indent on

" spell checker
map <F5> qsetlocal spell! spelllang=en_us<CR>

map <F6> qset number!

"remap 
imap qq <Esc>
nnoremap q :
nmap : :echo "No colon for you!"<CR>
nnoremap f i
nnoremap i :echo "No insert for you!"<CR>



"CtrlP"
set runtimepath^=~/.vim/pack/vendor/start/ctrlp.vim
"set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"CtrlP"
"new"
syntax on
set backspace=indent,eol,start
set nocp
set autoindent
set ignorecase
set smartcase

"new"
set number
set ma
"tabs to spaces
set expandtab
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=2
"On pressing tab, insert 2 spaces
"set expandtab
" " show existing tab with 2 spaces width
" set tabstop=2
" set softtabstop=2
" " when indenting with '>', use 2 spaces width
" set shiftwidth=2

"css autocomplete
set omnifunc=syntaxcomplete#Complete

"to make vim color scheme show up in tmux sessions
set background=dark

" remove underscore highlighting in markdown
hi link markdownError Normal
