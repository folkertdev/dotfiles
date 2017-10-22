set nocompatible
filetype off 

" Vundle 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/base16-vim' "my color schemes
Plugin 'w0rp/ale' "asynchronous linter
Plugin 'airblade/vim-gitgutter' "display git info in the gutter (left bar)
Plugin 'sheerun/vim-polyglot'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'Shougo/vimproc' "bit special, needs to be compiled
Plugin 'eagletmt/ghcmod-vim'
Plugin 'tpope/vim-commentary' "comment a line with `gc`
Plugin 'tpope/vim-surround' "change surrounding brackets
Plugin 'tpope/vim-repeat' "repeat stuff with `.` that is not normally repeatable
Plugin 'ElmCast/elm-vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'ervandew/supertab' "tab completions in insert mode

call vundle#end()
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle/


" remove `stack-ghc` from the list; it does not respect the cabal file
let g:ale_linters = {'haskell': ['stack-build', 'hlint', 'stack-ghc-mod' ]} 

nmap <silent> <Leader>ek <Plug>(ale_previous_wrap)
nmap <silent> <Leader>ej <Plug>(ale_next_wrap)
nmap <silent> <Leader>eg InsertInferredType() 
nmap <silent> <Leader>e <Plug>(ale_detail)
set backspace=indent,eol,start

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1


" gitgutter symbols
let g:gitgutter_sign_added = '·'
let g:gitgutter_sign_modified = '·'
let g:gitgutter_sign_removed = '·'
let g:gitgutter_sign_removed_first_line = '·'
let g:gitgutter_sign_modified_removed = '·'


let g:haskell_indent_if = 4
let g:haskell_indent_case = 4
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 4
let g:haskell_indent_do = 4
let g:haskell_indent_in = 4
let g:haskell_indent_guard = 4
let g:haskell_indent_case_alternative = 4


map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>
