" installs vim-plug, the vim plugin manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

syntax on
filetype on
filetype plugin indent on

" spell checker
map <F5> qsetlocal spell! spelllang=en_us<CR>

map <F6> qset number!

"remap
"enter normal mode from insert mode
imap qq <Esc>
"enter command-line mode from normal mode 
nnoremap q :
" disallow colon to enter command-line mode
nmap : :echo "No colon for you!"<CR>
"enter insert mode from normal mode
nnoremap f i
nnoremap i :echo "No insert for you!"<CR>
"record a macro
"nnoremap z q

set viminfo='100,<1000,s100,h

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
set softtabstop=0 
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

" testing vim-plug
" https://github.com/junegunn/vim-plug
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
call plug#end()
