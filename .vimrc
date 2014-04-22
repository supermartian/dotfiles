" supermartian's vimrc
"

" Shit happens on MAC
let Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8/bin/ctags'

" Common settings
syntax on
set background=dark
colorscheme solarized
set nocst
set nu
set expandtab
set fileformat=unix
set autoindent
set shiftwidth=4
set tabstop=4
set fileencodings=ucs-bom,utf-8,chinese
set encoding=utf-8
let mapleader=','

" Autocomplete settings
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Jump to the next line of the editor, not the __LINE__
nnoremap j gj
nnoremap k gk

" Paste
set pastetoggle=<F2>

" list
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Copy to CLIPBOARD, and use 'y' to copy to the PRIMARY
map <leader>y "+y
map <leader>p "+p

" Powerline settings
set laststatus=2
set rtp+=~/PowerLine/powerline/bindings/vim
let g:Powerline_symbols = 'fancy'

" Taglist 
map <F4> :TlistToggle<CR>
imap <F4> <ESC>:TlistToggle<CR>

" NerdCommentor
map <F5> <Leader>cs
imap <F5> <ESC><Leader>cs
map <F6> <Leader>cu
imap <F6> <ESC><Leader>cu

" NerdTree
let NERDTreeIgnore=['cscope.in.out', 'cscope.out', 'cscope.files', 'cscope.po.out', 'tags', '\.swp$']
map <F3> :NERDTreeToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

" EasyPeasy
let g:tag_directory = "~/.vim/tags/"
let g:tag_extension = ".tags"
let g:include_paths = "/usr/include/,/usr/local/include/"

" Tab switching
map <Leader><Right> :tabn<CR>
map <Leader><Left> :tabp<CR>
map <Leader><Down> :tabc<CR>
map <Leader><Up> :tabe<CR>

" Clear tailing white space
map <F8> :%s/ *$//g<CR>

" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle "mutewinter/vim-indent-guides"
Bundle "cucumber.zip"
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "vim-scripts/matrix.vim--Yang"
Bundle 'nelstrom/vim-mac-classic-theme'
Bundle "L9"
Bundle "FuzzyFinder"
Bundle "vim-scripts/taglist.vim"
Bundle "vim-scripts/cscope_macros.vim"
Bundle "plasticboy/vim-markdown"
Bundle "walm/jshint.vim"
Bundle "vim-scripts/EasyPeasy"
Bundle "aperezdc/vim-template"
Bundle "othree/xml.vim"
Bundle "Chiel92/vim-autoformat"
Bundle "katonori/binedit.vim"
Bundle "vim-scripts/DrawIt"
Bundle "terryma/vim-smooth-scroll"
Bundle "terryma/vim-multiple-cursors"
Bundle "ervandew/supertab"
filetype plugin indent on

" For my foot switch which is bond to F12
imap <F12> <ESC> j
imap <C-F12> <ESC> k 
cmap <F12> <ESC>
nmap <F12> j
nmap <C-F12> k
