#! /bin/sh
echo "initializing submodules"
git submodule init

echo "updating submodules"
git submodule update

echo "creating symlinks"
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/dotfiles/vim/vimrc ~/.nvimrc
ln -s ~/dotfiles/config ~/.config
ln -s ~/dotfiles/vimperator ~/.vimperator
ln -s ~/dotfiles/vimperatorrc ~/.vimperatorrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/sqliterc ~/.sqliterc
ln -s ~/dotfiles/vkgrc ~/.vkgrc
ln -s ~/dotfiles/.spacemacs ~/.spacemacs
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf

ln -s ~/dotfiles/powerline ~/powerline
echo "-------- done! ---------"
