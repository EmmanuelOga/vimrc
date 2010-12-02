" Execute open rspec buffer (Thanks to Ian Smith-Heisters)
function! RunSpec(args)
 if exists("b:rails_root") && filereadable(b:rails_root . "/script/spec")
   let spec = b:rails_root . "/script/spec"
 else
   let spec = "bundle exec rspec"
 end
 let cmd = ":! " . spec . " % -cfn " . a:args . " ; sleep "
 execute cmd
endfunction

" Mappings
" run one rspec example or describe block based on cursor position
map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)

" run full rspec file
map !S :call RunSpec("")
