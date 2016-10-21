#!/bin/bash

# TODO: check for dependencies

# shell
mv ~/.zshrc ~/.zshrc.original
ln -sv ~/.dotfiles/zshrc ~/.zshrc

# tmux
mv ~/.tmux.conf ~/.tmux.conf.original
ln -sv ~/.dotfiles/tmux.conf ~/.tmux.conf
