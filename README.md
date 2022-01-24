# ~/.dotfiles

My personal dot files.

## Dependencies

- [fish](https://fishshell.com/)
- [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
- [Powerline fonts](https://github.com/powerline/fonts)
- [Alacritty](https://github.com/jwilm/alacritty)
- [asdf](https://github.com/asdf-vm/asdf), [asdf-ruby](https://github.com/asdf-vm/asdf-ruby), [asdf-elixir](https://github.com/asdf-vm/asdf-elixir), [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs), [asdf-erlang](https://github.com/asdf-vm/asdf-erlang).
- [Hammerspoon](https://www.hammerspoon.org/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [tmuxinator](https://github.com/tmuxinator/tmuxinator)
- [neovim](https://neovim.io)
- [vimlociraptor](https://github.com/lucasprag/vimlociraptor)

## Install

```
git clone git@github.com:lucasprag/dotfiles.git ~/.dotfiles

# fish
mkdir -p ~/.config/fish
mv ~/.config/fish ~/.config/fish_original
ln -s ~/.dotfiles/fish ~/.config/fish

# oh my fish
mv ~/.config/omf/ ~/.config/omf.original
ln -s ~/.dotfiles/omf ~/.config/omf

# tmux
brew install tmux
mv ~/.tmux.conf ~/.tmux.conf.original
ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf
mkdir -p ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# ctrl+b + I to install plugins

# tmuxinator
curl https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh > ~/.dotfiles/tmuxinator/tmuxinator.zsh
ln -sf ~/.dotfiles/tmuxinator ~/.tmuxinator

# neovim
brew install neovim

# gemrc
mv ~/.gemrc ~/.gemrc.original
ln -s ~/.dotfiles/gemrc ~/.gemrc

# alacritty
mkdir -p ~/.config/alacritty
mv ~/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.original.yml
ln -s ~/.dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml

# hammerspoon
ln -s ~/.dotfiles/hammerspoon/init.lua ~/.hammerspoon/init.lua

# make typing great again -- re-pair bluetooth keyboard required to make it work
defaults write -g InitialKeyRepeat -int 13
defaults write -g KeyRepeat -int 1

# install macos apps
brew cask install spotify postico keepingyouawake alacritty
```
