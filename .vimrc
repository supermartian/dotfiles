" supermartian's vimrc
"

" Common settings
syntax on
set background=dark
set nocst
set nu
"set expandtab
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
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" Taglist 
map <Leader>4 :TlistToggle<CR>
imap <Leader>4 <ESC>:TlistToggle<CR>

" NerdCommentor
map <Leader>5 <Leader>cs
imap <Leader>5 <ESC><Leader>cs
map <Leader>6 <Leader>cu
imap <Leader>6 <ESC><Leader>cu

" NerdTree
let NERDTreeIgnore=['cscope.in.out', 'cscope.out', 'cscope.files', 'cscope.po.out', 'tags', '\.swp$']
map <Leader>3 :NERDTreeToggle<CR>
imap <Leader>3 <ESC>:NERDTreeToggle<CR>

" EasyPeasy
let g:tag_directory = "~/.vim/tags/"
let g:tag_extension = ".tags"
let g:include_paths = "/usr/include/,/usr/local/include/"

" Tab switching
map <Leader>l :tabn<CR>
map <Leader>h :tabp<CR>
map <Leader>j :tabc<CR>
map <Leader>k :tabe<CR>

" Go lang
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" Clear tailing white space
map <Leader>8 :%s/ *$//g<CR>

" Vundle settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/matrix.vim--Yang'
Plugin 'nelstrom/vim-mac-classic-theme'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/cscope_macros.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'walm/jshint.vim'
Plugin 'vim-scripts/EasyPeasy'
Plugin 'aperezdc/vim-template'
Plugin 'othree/xml.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'katonori/binedit.vim'
Plugin 'vim-scripts/DrawIt'
Plugin 'terryma/vim-smooth-scroll'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/tla.vim'
Plugin 'fatih/vim-go'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

" For my foot switch which is bond to F12
imap <F12> <ESC> j
imap <C-F12> <ESC> k 
cmap <F12> <ESC>
nmap <F12> j
nmap <C-F12> k
