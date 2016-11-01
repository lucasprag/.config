#!/bin/bash

# TODO: check for dependencies

# shell
mv ~/.zshrc ~/.zshrc.original
ln -sv ~/.dotfiles/zshrc ~/.zshrc

# tmux
mv ~/.tmux.conf ~/.tmux.conf.original
ln -sv ~/.dotfiles/tmux.conf ~/.tmux.conf

# tmuxinator
curl https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh > ~/.dotfiles/tmuxinator/tmuxinator.zsh

# 2mundos
ln -sv ~/.dotfiles/tmuxinator/tutor.yml ~/.tmuxinator/tutor.yml
ln -sv ~/.dotfiles/tmuxinator/aofl-tutor.yml ~/.tmuxinator/aofl-tutor.yml
