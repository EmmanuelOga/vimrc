filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

source ~/.vim/vimrc

colorscheme ir_black

" disable toolbars and menues
set guioptions=
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10

" Load additional plugin configurations and stuff
ruby << RUBY
  Dir[File.expand_path("~/.vim/rc") + "/*"].each do |rc|
    Vim.command("source #{File.expand_path(rc)}")
  end
RUBY
