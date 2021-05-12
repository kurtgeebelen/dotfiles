#!/bin/bash
echo "export EDITOR=vim" >> ~/.bashrc
sudo apt-get update
sudo apt-get install -y vim htop git openssh-server
ln -sf ~/dotfiles/inputrc            ~/.inputrc
ln -sf ~/dotfiles/gitconfig          ~/.gitconfig
ln -sf ~/dotfiles/vim/vimrc          ~/.vimrc
rm -rf ~/.vim
ln -sf ~/dotfiles/vim                ~/.vim
