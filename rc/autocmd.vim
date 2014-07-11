" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " Saves when the buffer looses the focus
  au FocusLost * :wa

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END

autocmd VimEnter * set vb t_vb= " disable bells and whistles

" make and python use real tabs
au FileType make      set noexpandtab
au FileType python    set noexpandtab

au BufRead,BufNewFile {Gemfile,Rakefile,config.ru}    set ft=ruby
