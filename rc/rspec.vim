" Execute open rspec buffer (Thanks to Ian Smith-Heisters)
function! RunSpec(args)
 if exists("b:rails_root") && filereadable(b:rails_root . "/script/spec")
   let spec = b:rails_root . "/script/spec"
 else
   let spec = "bundle exec rspec"
 end
 let cmd = ":! rvm ree exec bash -c \"cd " . getcwd() . "; " . spec . " % " . a:args . " ; read\""
 execute cmd
endfunction

" Mappings
" run one rspec example or describe block based on cursor position
map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)

" run full rspec file
map !S :call RunSpec("")
