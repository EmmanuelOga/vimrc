filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Load additional plugin configurations and stuff
for rc in split(globpath(&rtp, "rc/*"), "\n")
  execute "source" rc
endfor
