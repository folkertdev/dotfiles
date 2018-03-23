


""" GENERAL """

let mapleader=","

set noswapfile
set nobackup
set cursorline " highlight current line    
set showmatch  " show matching bracket 

set showmode "show current mode"

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" remap split switching keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" make Y yank from the cursor to the end of the line
noremap Y y$

" copy to system clipboard
" see http://askubuntu.com/questions/347519/unable-to-copy-from-vim-to-system-clipboard
set clipboard=unnamedplus

" display UI for switching buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>

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

""" LINE NUMBERING

set relativenumber  "show line numbers

" Cycle through relativenumber + number, number (only), and no numbering.
function! Cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

nnoremap <silent> <Leader>r :call Cycle_numbering()<CR>

""" KEYS """

" make j and k move visual lines, not actual lines
nmap j gj
nmap k gk

" search settings
set incsearch "start searching immediately
set ignorecase " ignore the case
set smartcase "except when there is an uppercase letter in the search term

""" COLORS """

syntax on

" make comments readable
set background=dark

let base16colorspace=256


" load plugins from vundle
source ~/.dotfiles/vim/plugins.vim

" has no effect, run base16_solarized_light (or any other base16 color scheme)
" in the command line
colorscheme base16-solarized-light



