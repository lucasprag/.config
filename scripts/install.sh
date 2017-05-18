#!/bin/bash

# TODO: check for dependencies

# shell
mv ~/.zshrc ~/.zshrc.original
ln -sv ~/.dotfiles/zshrc ~/.zshrc

# Ack
mv ~/.ackrc ~/.ackrc.original
ln -sv ~/.dotfiles/ackrc ~/.ackrc

# tmux
mv ~/.tmux.conf ~/.tmux.conf.original
ln -sv ~/.dotfiles/tmux.conf ~/.tmux.conf
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# tmuxinator
curl https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh > ~/.dotfiles/tmuxinator/tmuxinator.zsh

# 2mundos
ln -sv ~/.dotfiles/tmuxinator/tutor.yml ~/.tmuxinator/tutor.yml
ln -sv ~/.dotfiles/tmuxinator/uol.yml ~/.tmuxinator/uol.yml
ln -sv ~/.dotfiles/tmuxinator/green.yml ~/.tmuxinator/green.yml
ln -sv ~/.dotfiles/tmuxinator/api-template.yml ~/.tmuxinator/api-template.yml

# personal
ln -sv ~/.dotfiles/tmuxinator/carolelucas.yml ~/.tmuxinator/carolelucas.yml
ln -sv ~/.dotfiles/tmuxinator/camilaeedu.yml ~/.tmuxinator/camilaeedu.yml
