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

