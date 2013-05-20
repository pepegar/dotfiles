#! /bin/sh
echo "initializing submodules"
git submodule init

echo "updating submodules"
git submodule update

echo "creating symlinks"
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/config ~/.config
ln -s ~/dotfiles/gitconfig ~/.gitconfig
