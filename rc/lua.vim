" Stolen from github.com/norman :)
augroup filetypedetect
  " Lua
  " au BufNewFile,BufRead *.lua,*rockspec set filetype=lua makeprg=luac\ -p\ % errorformat=luac\:\ %f:%l:\ %m
  au Filetype lua nmap <F2> :!echo; ~/.luarocks/bin/tlua spec<CR>
  au Filetype lua nmap <F3> :!echo; ~/.luarocks/bin/tlua test<CR>
  au Filetype lua nmap <F4> :!lua %<CR>
  au Filetype lua nmap <F6> :!shake %<CR>
augroup END
