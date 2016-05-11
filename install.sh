#!/bin/bash

ln -s dotfiles/bash ~/.bash
ln -s dotfiles/bashrc ~/.bashrc
ln -s dotfiles/bash_profile ~/.bash_profile
ln -s dotfiles/bash_aliases ~/.bash_aliases
ln -s dotfiles/gitconfig ~/.gitconfig
ln -s dotfiles/vim ~/.vim
ln -s dotfiles/vimrc ~/.vimrc
ln -s dotfiles/tmux ~/.tmux
ln -s dotfiles/tmux/tmux.conf ~/.tmux.conf

curl https://raw.githubusercontent.com/seebi/dircolors-solarized/master/dircolors.256dark > ~/.dircolors

git clone git://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone git://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone git://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/vim-airline/vim-airline-themes.git ~/.vim/bundle/vim-airline-themes
git clone git://github.com/bronson/vim-trailing-whitespace ~/.vim/bundle/vim-trailing-whitespace

