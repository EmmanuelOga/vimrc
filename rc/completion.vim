" http://vim.wikia.com/wiki/VimTip1386

" change the 'completeopt' option so that Vim's " popup menu doesn't
" select the first completion item, but rather just " inserts the longest
" common text of all matches; and the menu will come " up even if there's
" only one match. (The longest setting is responsible " for the former
" effect and the menuone is responsible for the " latter.)
set completeopt=longest,menuone

" change the behavior of the <Enter> key when the popup menu is
" visible. In that case the Enter key will simply select the highlighted
" menu item, just as <C-Y> does.
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" further improve the completion popup menu:
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
