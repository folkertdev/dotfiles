nnoremap <leader>em :ElmMakeCurrentFile<CR>
nnoremap <leader>mm :ElmMakeMain<CR>

" make function arguments (the types) a text object, allowing for change/delete inner/all argument
onoremap <silent> ia :<c-u>silent execute "normal! ?->\r:nohlsearch\rwvf-ge"<CR>
onoremap <silent> aa :<c-u>silent execute "normal! ?->\r:nohlsearch\rhvEf-ge"<CR>

" gI to jump to the first import
nnoremap <buffer> gI gg /\cimport<CR><ESC>:noh<CR>

" gC to edit the current elm-package file
nnoremap <buffer> gC :e elm-package.json<CR>

function! JumpElmFunction(reverse)
    call search('\C[[:alnum:]]*\s*:', a:reverse ? 'bW' : 'W')
endfunction

" use [[ and ]] to jump to the previous or next function declaration
nnoremap <buffer><silent> ]] :call JumpElmFunction(0)<CR>
nnoremap <buffer><silent> [[ :call JumpElmFunction(1)<CR>

let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1
