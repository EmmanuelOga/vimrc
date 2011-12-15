call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Load additional plugin configurations and stuff
for rc in split(globpath(&rtp, "rc/*"), "\n")
  execute "source" rc
endfor
