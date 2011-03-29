" set titlestring=%{getcwd()}\ -\ %{v:servername}
" 
" set laststatus=2
" 
" " Setting status line resets set ruler, so we need to emulate it
" " set statusline+=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" 
" " set statusline=%t                             " tail of the filename
" set statusline=%f                               " the filename
" set statusline+=[%{strlen(&fenc)?&fenc:'none'}, " file encoding
" set statusline+=%{fugitive#statusline()}        " git branch
" set statusline+=%{&ff}]                         " file format
" set statusline+=%h                              " help file flag
" set statusline+=%m                              " modified flag
" set statusline+=%r                              " read only flag
" set statusline+=%y                              " filetype
" set statusline+=%=                              " left/right separator
" set statusline+=%c,                             " cursor column
" set statusline+=%l/%L                           " cursor line/total lines
" set statusline+=\ %P                            " percent through file
" 
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
