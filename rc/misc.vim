filetype off

" load the plugin and indent settings for the detected filetype
filetype plugin indent on

" Map ';' to : so I don't have to press shift when typing commands.
nnoremap ; :

" escape with jj
inoremap jj <ESC>

colorscheme ir_black

syntax on

set number

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

set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.

set timeoutlen=500     " Time to wait after ESC (default causes an annoying delay)

set noautoindent
set smartindent
set smarttab
set cindent

set bs=2               " Backspace over everything in insert mode
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set ts=2               " Tabs are 2 spaces

set lcs=tab:\→\ ,trail:·,extends:>,precedes:<
set mat=5              " Bracket blinking.
set noerrorbells       " No noise.
set novisualbell       " No blinking .
set showmatch          " Show matching brackets.

set autowrite                " Writes on make/shell commands
set backup                   " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.
cmap w!! w !sudo tee % >/dev/null " use sudo to overwrite readonly files

nmap <silent> ,/ :nohlsearch<CR> " clear the search highlight

nnoremap Q gq} " Reformat paragraphs and list.

" Spell checks
map <silent> <F6>  <Esc>:setlocal spell spelllang=en_gb<CR>
map <silent> <F7>  <Esc>:setlocal nospell<CR>

" Navigate windows with ctrl direction
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

let mapleader = ","

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likely to want to edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

map <Leader>z :ZoomWin<CR> " ZoomWin configuration
