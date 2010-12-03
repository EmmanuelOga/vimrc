" ConqueTerm wrapper
function! StartTerm()
  execute 'ConqueTerm ' . $SHELL . ' --login'
  setlocal listchars=tab:\ \
endfunction

" Command-e for ConqueTerm
map <leader>x :call StartTerm()<CR>
