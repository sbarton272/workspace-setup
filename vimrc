" Basic vimrc
"
" Author sebarton@google.com
"
" Starting from https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

" Leader, note needs to be before plugins are loaded
let mapleader=","

source ~/.vim/vundle_module.vim

" Linenumbers
set number

" Auto read files changed externally
set autoread

" Setup backspace correctly
set backspace=eol,start,indent


" Search settings
set incsearch
set hlsearch

filetype plugin indent on
syntax on
colorscheme monokai

" Disable backups
set nobackup
set nowb
set noswapfile

" Tab settings
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Auto-indent, smart-indent
set ai
set si

" Wrap lines
set wrap

" Font settings
if has('gui_running')
  set guioptions=aem  " simple gui
  if has('gui_win32')
    set guifont=DejaVu_Sans_Mono:h8:cANSI
  else
    set guifont=DejaVu\ Sans\ Mono\ 8
  endif
endif
