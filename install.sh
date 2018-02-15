#!/bin/bash

# shell
mv ~/.zshrc ~/.zshrc.original
ln -sv ~/.dotfiles/zshrc ~/.zshrc

# Ack
mv ~/.ackrc ~/.ackrc.original
ln -sv ~/.dotfiles/ackrc ~/.ackrc

# Spacemacs
mv ~/.spacemacs ~/.spacemacs.original
ln -sv ~/.dotfiles/spacemacs ~/.spacemacs

# tmux
mv ~/.tmux.conf ~/.tmux.conf.original
ln -sv ~/.dotfiles/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# tmuxinator
curl https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh > ~/.dotfiles/tmuxinator/tmuxinator.zsh
