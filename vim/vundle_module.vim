" Vundle package manager
" https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Syntax highlighting
" https://github.com/sickill/vim-monokai
Plugin 'sickill/vim-monokai'

" Searching
" https://github.com/rking/ag.vim
Plugin 'rking/ag.vim'

" https://github.com/octol/vim-cpp-enhanced-highlight
Plugin 'octol/vim-cpp-enhanced-highlight'

" fuzzy search
Plugin 'kien/ctrlp.vim'
let g:ctrlp_max_depth = 40
let g:ctrlp_max_files = 0

let g:ctrlp_custom_ignore = {
  \ 'dir':  'results\|u\-boot\|tps\|poky\|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" Switch to header
Plugin 'derekwyatt/vim-fswitch'
noremap <Leader>s :FSHere<CR>

" Multiple cursors
Plugin 'terryma/vim-multiple-cursors'

" Tab completion
Plugin 'ervandew/supertab'

" Buffer navigation
Plugin 'jlanzarotta/bufexplorer'
noremap <Leader>b :BufExplorer<CR>

" Rename a file with :Rename
Plugin 'Rename'

" Remove trailing whitespace on save
Plugin 'ntpeters/vim-better-whitespace'
autocmd FileType javascript,c,cpp,java,html,ruby,python autocmd BufWritePre <buffer> StripWhitespace

" Project Specific vimrc
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
