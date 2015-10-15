" Basic vimrc
"
" Author sebarton@google.com
" 
" Starting from https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

" Auto read files changed externally
set autoread

" Setup backspace correctly
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Search settings
set incsearch
set hlsearch

" Enable syntax
syntax enable

" View settings
try
    colorscheme desert
catch
endtry

set background=dark

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
