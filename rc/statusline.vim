set laststatus=2

" Setting status line resets set ruler, so we need to emulate it
" set statusline+=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

" Same as above bug include fugitive status
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


