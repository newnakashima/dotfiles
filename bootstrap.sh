#!/bin/bash

# install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

ln -Ffs $HOME/dotfiles/.tmux.conf       $HOME/.tmux.conf
ln -Ffs $HOME/dotfiles/.zshrc           $HOME/.zshrc
ln -Ffs $HOME/dotfiles/.vimrc           $HOME/.vimrc
ln -Ffs $HOME/dotfiles/.gitconfig       $HOME/.gitconfig
ln -Ffs $HOME/dotfiles/karabiner.json   $HOME/.config/karabiner/karabiner.json

# Docker
ln -Ffs $HOME/dotfiles/.docker/config.json $HOME/.docker/config.json
ln -Ffs $HOME/dotfiles/.docker/daemon.json $HOME/.docker/daemon.json

# vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
