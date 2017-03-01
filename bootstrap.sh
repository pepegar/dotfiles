#! /bin/sh
echo "initializing submodules"
git submodule init

echo "updating submodules"
git submodule update

echo "creating symlinks"
ln -s ~/dotfiles/config ~/.config
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/sqliterc ~/.sqliterc
echo "-------- done! ---------"
