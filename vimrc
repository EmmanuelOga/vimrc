set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" Bundles:
Bundle 'EmmanuelOga/hexHighlight'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'mileszs/ack.vim'

Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tsaleh/vim-align'
Bundle 'vim-ruby/vim-ruby'
Bundle 'vim-scripts/ZoomWin'
Bundle 'vim-scripts/matchit.zip'
Bundle 'vim-scripts/renamer.vim'

" General
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'flazz/vim-colorschemes'
Bundle 'corntrace/bufexplorer'

" Javascript
Bundle 'leshill/vim-json'
Bundle 'groenewege/vim-less'
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'

" Java
Bundle 'derekwyatt/vim-scala'
Bundle 'derekwyatt/vim-sbt'

" HTML
Bundle 'amirh/HTML-AutoCloseTag'
Bundle 'ChrisYip/Better-CSS-Syntax-for-Vim'

Bundle 'tpope/vim-markdown'

filetype plugin indent on     " required!

" Load additional plugin configurations and stuff
for rc in split(globpath(&rtp, "rc/*"), "\n")
  execute "source" rc
endfor

"
" Brief vundle help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
