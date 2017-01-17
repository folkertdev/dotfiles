" autoreload vimrc
" autocmd! bufwritepost .vimrc source %

" syntax highlighting
syntax on

let mapleader=","

set noswapfile
set nobackup


" shows the current mode
set showmode

" Do case sensitive search/replace only when a character (in the command) is uppercase
set smartcase

" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" Clean trailing whitespace
nnoremap <leader>w mz:%s/\s\+$//<cr>:let @/=''<cr>`z
"""""""""""""""""""""""""""
" General editor settings "
""""""""""""""""""""""""""

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" load plugins from vundle
source ~/.dotfiles/vim/plugins.vim

" load mappings 
source ~/.dotfiles/vim/mappings/leader.vim


let g:syntastic_rst_ignore_errors = (['Error in "sourcecode" directive:', 'Error in "sourcecode" directive: ','error in "sourcecode" directive: ','error in "sourcecode" directive:','sourcecode'])
" save on losing focus
au FocusLost * :wa


set number  "show line numbers
" remap split switching keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <F1> <nop>
nnoremap K <nop>
" insert a new-line after the current line by pressing Enter (Shift-Enter for inserting a line before the current line)
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" make Y yank from the cursor to the end of the line
noremap Y y$

:nnoremap <Leader>q" ciw""<Esc>P
:nnoremap <Leader>q' ciw''<Esc>P

" map <Leader>nt :NERDTreeToggle<cr>
" colorscheme molokai

:nnoremap <F5> :buffers<CR>:buffer<Space>

" associate *.conf with json filetype
au BufRead,BufNewFile *.conf setfiletype json

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Same when jumping around
nnoremap g; g;zz
nnoremap g, g,zz
nnoremap <c-o> <c-o>zz


"""""""""""""""""""""""""""
" Folding settings "
""""""""""""""""""""""""""

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}
set foldtext=MyFoldText()
"""""""""""""""""""""""""""
" Status Bar settings "
""""""""""""""""""""""""""



"""""""""""""""""""""""""""
" Language-specific settings "
""""""""""""""""""""""""""

let g:elm_format_autosave = 1

autocmd! BufNewFile,BufReadPre,FileReadPre  *.m set syntax=octave
autocmd! BufNewFile,BufReadPre,FileReadPre  *.py    so ~/.dotfiles/vim/python.vim
autocmd! BufNewFile,BufReadPre,FileReadPre  *.hs    so ~/.dotfiles/vim/haskell.vim
autocmd! BufNewFile,BufReadPre,FileReadPre  *.elm    so ~/.dotfiles/vim/elm.vim

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c,*.cpp,*.hpp set makeprg=make\ -C\ /root/blender-git/build
augroup END

filetype plugin on
filetype indent on


" These settings will only impact editing '.rst' files.
" so as not to conflict with any of your other settings.

" indentation settings
autocmd FileType rst setlocal expandtab shiftwidth=3 tabstop=3

" show a ruler at the right hand margin
autocmd FileType rst setlocal colorcolumn=120

" enable syntax highlighting
" autocmd FileType rst syntax on

" spell checking
syntax spell toplevel
set spell
set spell spelllang=en_us


" for wrapping text
autocmd FileType rst setlocal textwidth=118


" all files use utf-8 encoding
autocmd FileType rst setlocal encoding=utf-8

"""""""""""""""""
" settings for tex
"""""""""""""""""

" indentation settings
autocmd FileType plaintex setlocal expandtab shiftwidth=4 tabstop=4

" show a ruler at the right hand margin
autocmd FileType plaintex setlocal colorcolumn=120

" for wrapping text
autocmd FileType plaintex setlocal textwidth=118

" spell checking
autocmd FileType plaintex syntax spell toplevel
autocmd FileType plaintex setlocal spell
autocmd FileType plaintex setlocal spell spelllang=en_us



" copy to system clipboard
" see http://askubuntu.com/questions/347519/unable-to-copy-from-vim-to-system-clipboard
set clipboard=unnamedplus

" Ack
nnoremap <leader>a :Ack!<space>


colorscheme Monokai
colorscheme hybrid
colorscheme hybrid

" make comments readable
set background=dark
set term=screen-256color
