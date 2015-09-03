
set nocompatible 
set autoread "detect when file is changed 

" make backspace behave 
set backspace=indent,eol,start

" faster redrawing
set ttyfast 

" highlight conflicts 
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

"""""""""""""" 
" Backups 
"""""""""""""" 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


filetype plugin on
au BufNewFile,BufRead *.endfile set filetype=endfile
au BufNewFile,BufRead *.php set filetype=php
filetype plugin indent on

syntax on
set nocompatible

set modelines=0
set wrap

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab


set encoding=utf-8
set scrolloff=3
set autoindent
set showcmd
set showmode
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

