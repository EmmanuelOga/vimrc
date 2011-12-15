filetype off

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map ';' to : so I don't have to press shift when typing commands.
" http://nvie.com/posts/how-i-boosted-my-vim/
nnoremap ; :
" escape with jj
inoremap jj <ESC>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Light schemes
" colorschem ironman
" colorschem fruit

" Dark schemes
colorscheme ir_black
" colorscheme molokai
" colorscheme mustang

syntax on
set nocompatible
set number

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc

set hidden        " Better buffer management
set nobackup
set noswapfile    " (additionally disables swap files)
set nowritebackup
set wildmenu      " Better tab completion
set wrapscan

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set history=100 " keep 50 lines of command line history
set ruler       " show the cursor position all the time
set showcmd     " display incomplete commands

" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>

" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'

set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.

set timeoutlen=500     " Time to wait after ESC (default causes an annoying delay)

" Formatting (some of these are for coding in C and C++)
set noautoindent
set smartindent

set bs=2               " Backspace over everything in insert mode
set cindent
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set smarttab
set ts=2               " Tabs are 2 spaces

" Visual
set lcs=tab:\→\ ,trail:·,extends:>,precedes:<
set mat=5              " Bracket blinking.
set noerrorbells       " No noise.
set novisualbell       " No blinking .
set showmatch          " Show matching brackets.

" Backups & Files
set autowrite                " Writes on make/shell commands
set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

" use sudo to overwrite readonly files
cmap w!! w !sudo tee % >/dev/null

" clear the search highlight
nmap <silent> ,/ :nohlsearch<CR>

" Reformat paragraphs and list.
nnoremap Q gq}

" Spell checks
map <silent> <F6>  <Esc>:setlocal spell spelllang=en_gb<CR>
map <silent> <F7>  <Esc>:setlocal nospell<CR>

" Navigate windows with ctrl direction
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

let mapleader = ","

" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: <Leader>t
map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Inserts the path of the currently edited file into a command
" Command mode: Ctrl+P
cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" expand %% to filepath of current file
cabbr %% <C-R>=expand('%:p:h')<CR>

" Use modeline overrides
set modeline
set modelines=10

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
