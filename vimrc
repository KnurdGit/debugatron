" Enable true color support
set termguicolors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" Map leader to space
let mapleader = " "
let maplocalleader = " "

" Enable mouse mode
set mouse=a

" Save undo history
set undofile

" Keep 4 lines above and below the cursor
set scrolloff=4

" Line numbers
set number
set relativenumber
set numberwidth=5
set showcmd
set cursorline
set showmatch
set signcolumn=yes

" Update times
set updatetime=250
set timeoutlen=300

" Window splitting
set splitright
set splitbelow
set splitkeep=screen

" Better editing experience
set expandtab
" set smarttab
set cindent
" set autoindent
set wrap
set textwidth=300
set tabstop=4
set shiftwidth=0
set softtabstop=-1

" Enable break indent
set breakindent

" Clipboard integration
set clipboard=unnamedplus

" Search options
set ignorecase
set smartcase
set hlsearch
set incsearch
set path+=**
set wildmenu

" Completion options
set completeopt=menuone,noselect

" Undo and backup options
set nobackup
set nowritebackup
set noswapfile

" Command history
set history=50

" Enable syntax highlighting
syntax on

" Enable filetype detection and plugins (for better autocomplete, indentation, etc.)
filetype plugin indent on

" Basic autocomplete using built-in completion
" Triggered by Ctrl-n / Ctrl-p
set omnifunc=syntaxcomplete#Complete

" (Optional) Improve user experience with popup menu
set completeopt=menuone,noselect
