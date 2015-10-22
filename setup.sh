#!/bin/bash

# Install plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Move files to root dir
cp vimrc ~/.vimrc
cp -r vim/ ~/.vim/

