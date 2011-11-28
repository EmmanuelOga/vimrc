" Stolen from github.com/norman :)
augroup filetypedetect
  " Lua
  " au BufNewFile,BufRead *.lua,*rockspec set filetype=lua makeprg=luac\ -p\ % errorformat=luac\:\ %f:%l:\ %m
  au Filetype lua nmap <F3> :!echo; ~/.luarocks/bin/tsc tests/*<CR>
  au Filetype lua nmap <F4> :!echo; ~/.luarocks/bin/tlua run<CR>
  au Filetype lua nmap <F5> :!lua %<CR>
  au Filetype lua nmap <F6> :!shake %<CR>
augroup END
