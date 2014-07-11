set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles:
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'mileszs/ack.vim'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tsaleh/vim-align'
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/renamer.vim'

" General
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on     " required!

" Load additional plugin configurations and stuff
for rc in split(globpath(&rtp, "rc/*"), "\n")
  execute "source" rc
endfor
