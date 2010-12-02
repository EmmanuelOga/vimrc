filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

source ~/.vim/vimrc

colorscheme ir_black

" disable toolbars and menues
set guioptions=
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10

" ConqueTerm wrapper
function! StartTerm()
  execute 'ConqueTerm ' . $SHELL . ' --login'
  setlocal listchars=tab:\ \
endfunction

" Command-e for ConqueTerm
map <leader>x :call StartTerm()<CR>

if filereadable(expand("~/.vim/rc/nerdtree"))
  source ~/.vim/rc/nerdtree
endif

if filereadable(expand("~/.vim/rc/rspec"))
  source ~/.vim/rc/rspec
endif

if filereadable(expand("~/.vim/rc/rsense"))
  source ~/.vim/rc/rsense
endif

if has("autocmd")
  if filereadable(expand("~/.vim/rc/autocmd"))
    source ~/.vim/rc/autocmd
  endif
endif
