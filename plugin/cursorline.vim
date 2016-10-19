" cursorline.vim - display the cursor line for the active window only
" Last Change:  2016 Oct 18
" Maintainer:   Steven Stallion <sstallion@gmail.com>
" License:      Simplified BSD License

if exists('g:loaded_cursorline') || !has('syntax')
  finish
endif
let g:loaded_cursorline = 1

let s:save_cpo = &cpo
set cpo&vim

function! s:CursorLineHide()
  setlocal nocursorline
endfunction

function! s:CursorLineShow()
  setlocal cursorline
endfunction

augroup CursorLine
  autocmd!
  autocmd WinEnter * call <SID>CursorLineShow()
  autocmd WinLeave * call <SID>CursorLineHide()
augroup END

let &cpo = s:save_cpo
unlet s:save_cpo
