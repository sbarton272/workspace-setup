" Basic vimrc
"
" Author sebarton@google.com
"
" Starting from https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim

" Leader, note needs to be before plugins are loaded
let mapleader=","

" Load plugins
source ~/.vim/vundle_module.vim

" jk to escape from edit mode
inoremap jk <Esc>

" Remove enter ex mode
nnoremap Q <nop>

" Linenumbers
set number

" Jump to matching brace
nnoremap % %v

" Auto read files changed externally
set autoread

" Always on status line
set laststatus=2
set statusline=%f "tail of the filename

" Setup backspace correctly
set backspace=eol,start,indent

" Colors
syntax enable
if has('gui_running')
  set background=light
  colorscheme solarized
else
  colorscheme monokai
endif

" Search settings
set incsearch
set hlsearch

filetype plugin indent on

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

" Reload support
augroup reload_vimrc
    autocmd!
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END

" Font settings
if has('gui_running')
  set guioptions=aem  " simple gui
  if has('gui_win32')
    set guifont=DejaVu_Sans_Mono:h8:cANSI
  else
    set guifont=DejaVu\ Sans\ Mono\ 8
  endif
endif
