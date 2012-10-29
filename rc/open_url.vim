" http://vim.wikia.com/wiki/Open_a_web-browser_with_the_URL_in_the_current_line
function! OpenUrlUnderCursor()
    let path="/Applications/Safari.app"
    execute "normal BvEy"
    let url=matchstr(@0, '[a-z]*:\/\/[^ >,;]*')
    if url != ""
        silent exec "!open -a ".path." '".url."'" | redraw! 
        echo "opened ".url
    else
        echo "No URL under cursor."
    endif
endfunction
nmap <leader>w :call OpenUrlUnderCursor()<CR>
