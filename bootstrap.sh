#!/bin/bash
echo "export EDITOR=VIM" >> ~/.bashrc
ln -sf ~/dotfiles/inputrc            ~/.inputrc
ln -sf ~/dotfiles/gitconfig          ~/.gitconfig
ln -sf ~/dotfiles/vim/vimrc          ~/.vimrc
rm -rf ~/.vim
ln -sf ~/dotfiles/vim                ~/.vim
#ln -sf ~/dotfiles/awesome            ~/.config/awesome
#ln -sf ~/dotfiles/i3            ~/.i3
#ln -sf ~/dotfiles/Xresources         ~/.Xresources
#ln -sf ~/dotfiles/octave/octaverc    ~/.octaverc
#ln -sf ~/dotfiles/tmux.conf          ~/.tmux.conf

#Set command history such that when you start typing and push up, it only searches in history starting with the same string of letters
echo "\"\\e[A\": history-search-backward" >> ~/.inputrc
echo "\"\\e[B\": history-search-forward" >> ~/.inputrc
# These 2 lines are for when you want Ctrl+up/down, in stead of just up/down
#echo "\"\\e[1;5A\": history-search-backward" >> ~/.inputrc.test
#echo "\"\\e[1;5B\": history-search-forward" >> ~/.inputrc.test
#ctrl+left and ctrl+right for moving back and forward in whole words
echo "\"\\e[1;5C\": forward-word" >> ~/.inputrc
echo "\"\\e[1;5D\": backward-word" >> ~/.inputrc
echo "\"\\e[5C\": forward-word" >> ~/.inputrc
echo "\"\\e[5D\": backward-word" >> ~/.inputrc
echo "\"\\e\e[C\": forward-word" >> ~/.inputrc
echo "\"\\e\e[D\": backward-word" >> ~/.inputrc
