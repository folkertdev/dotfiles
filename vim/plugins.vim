set nocompatible
filetype off 

" Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" General
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'godlygeek/tabular'
Plugin 'ervandew/supertab'
Plugin 'Shougo/vimproc'
Plugin 'tomtom/tlib_vim'
Plugin 'Shougo/neocomplete'
" Color Schemes
Plugin 'chriskempson/base16-vim'
Plugin 'flazz/vim-colorschemes' 
" Web Technologies
Plugin 'joshtronic/php.vim'
Plugin 'JulesWang/css.vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'elzr/vim-json'
" Ack 
Plugin 'mileszs/ack.vim'
" Plugin 'Valloric/YouCompleteMe'
" Writing 
Plugin 'genoma/vim-less'
Plugin 'reedes/vim-wordy'
Plugin 'reedes/vim-lexical'
" Elm 
Plugin 'ElmCast/elm-vim'
" Plugin 'dag/vim2hs'
" Haskell plugins
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
" Latex 
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle/

"""
" Plugin settings 
"""

" NerdTree
let NERDTreeShowHidden=1
map <Leader>n :NERDTreeToggle<CR>


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_python_python_exec = '/usr/bin/env/python3'
