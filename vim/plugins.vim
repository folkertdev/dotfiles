set nocompatible
filetype off 

" Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'chriskempson/base16-vim'
Plugin 'joshtronic/php.vim'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'elzr/vim-json'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'JulesWang/css.vim'
Plugin 'genoma/vim-less'
Plugin 'reedes/vim-wordy'
Plugin 'reedes/vim-lexical'
Plugin 'lambdatoast/elm.vim'
Plugin 'dag/vim2hs'

call vundle#end()
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle/

"""
" Plugin settings 
"""

let NERDTreeShowHidden=1


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_exec = 'tidy'
let g:syntastic_python_python_exec = '/usr/bin/env/python3'
