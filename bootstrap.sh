#!/bin/bash

set -euo pipefail

echo 'install dependencies'

# Tmux Plugin Manager
if [ ! -d ~/.tmux/plugins/tpm ]; then
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo 'tpm has been installed already.'
fi

# vimplug
if [ ! -f ~/.vim/autoload/plug.vim ]; then
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo 'vimplug has been installed already.'
fi

echo 'create symlinks.'

echo "create symlink to $HOME/.tmux.conf"
ln -Ffs $HOME/dotfiles/.tmux.conf       $HOME/.tmux.conf

echo "create symlink to $HOME/.zshrc"
ln -Ffs $HOME/dotfiles/.zshrc           $HOME/.zshrc

echo "create symlink to $HOME/.vimrc"
ln -Ffs $HOME/dotfiles/.vimrc           $HOME/.vimrc

echo "create symlink to $HOME/.gitconfig"
ln -Ffs $HOME/dotfiles/.gitconfig       $HOME/.gitconfig

echo "create symlink to $HOME/.config/karabiner/karabiner.json"
ln -Ffs $HOME/dotfiles/karabiner.json   $HOME/.config/karabiner/karabiner.json

# Docker
echo "create symlink to $HOME/.docker/config.json"
ln -Ffs $HOME/dotfiles/.docker/config.json $HOME/.docker/config.json

echo "create symlink to $HOME/.docker/daemon.json"
ln -Ffs $HOME/dotfiles/.docker/daemon.json $HOME/.docker/daemon.json

echo 'bootstrap.sh is successfully done.'
