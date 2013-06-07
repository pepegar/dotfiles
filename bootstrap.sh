#! /bin/sh
echo "initializing submodules"
git submodule init

echo "updating submodules"
git submodule update

echo "creating symlinks"
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/config ~/.config
<<<<<<< HEAD
ln -s ~/dotfiles/vimperatorrc ~/.vimperatorrc
=======
ln -s ~/dotfiles/gitconfig ~/.gitconfig
>>>>>>> 10ca33f2c45d5497ccf25dc3bf17ce0c2c4156c2
