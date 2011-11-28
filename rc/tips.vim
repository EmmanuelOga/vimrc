" http://stackoverflow.com/questions/4789069/how-do-i-create-a-tips-popup-in-vim
" http://vimdoc.sourceforge.net/htmldoc/windows.html#preview-window

let g:MyVimTips="off"
function! ToggleVimTips()
  if g:MyVimTips == "on"
    let g:MyVimTips="off"
    pclose
  else
    let g:MyVimTips="on"
    pedit ~/vimtips.txt
  endif
endfunction

nnoremap <F4> :call ToggleVimTips()<CR>
