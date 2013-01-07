" supermartian's vimrc
"

" Common settings
set nocst
set nu
set expandtab
set fileformat=unix
set autoindent
set shiftwidth=4
set tabstop=4
set fileencodings=ucs-bom,utf-8,chinese
let mapleader=','

" Powerline settings
set laststatus=2
set t_Co=256
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
let g:Powerline_symbols='fancy'

" Coding stuff settings
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>
map <F4> :TlistToggle<CR>
imap <F4> <ESC>:TlistToggle<CR>
map <F5> \cs
imap <F5> <ESC>\cs
map <F6> \cu
imap <F6> <ESC>\cu

" Tab switching
map <Leader><Right> :tabn<CR>
imap <Leader><Right> <ESC>:tabn<CR>
map <Leader><Left> :tabp<CR>
imap <Leader><Left> <ESC>:tabp<CR>
map <Leader><Down> :tabc<CR>
imap <Leader><Down> <ESC>:tabc<CR>
map <Leader><Up> :tabe<CR>
imap <Leader><Up> :tabe<CR>

" Clear tailing white space
map <F8> :%s/ *$//g<CR>

" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'Lokaltog/vim-powerline'
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle "mutewinter/vim-indent-guides"
Bundle "cucumber.zip"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle 'nelstrom/vim-mac-classic-theme'
Bundle "L9"
Bundle "FuzzyFinder"
Bundle "vim-scripts/taglist.vim"
Bundle "vim-scripts/cscope_macros.vim"
filetype plugin indent on

" For my foot switch which is bond to F12
imap <F12> <ESC> j
imap <C-F12> <ESC> k 
cmap <F12> <ESC>
nmap <F12> j
nmap <C-F12> k
