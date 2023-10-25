# ~/.config

My personal dot files.

## Dependencies

- [fish](https://fishshell.com/)
- [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
- [Powerline fonts](https://github.com/powerline/fonts)
- [Alacritty](https://github.com/jwilm/alacritty)
- [asdf](https://github.com/asdf-vm/asdf), [asdf-ruby](https://github.com/asdf-vm/asdf-ruby), [asdf-elixir](https://github.com/asdf-vm/asdf-elixir), [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs), [asdf-erlang](https://github.com/asdf-vm/asdf-erlang), [asdf-python](https://github.com/asdf-community/asdf-python).
- [Hammerspoon](https://www.hammerspoon.org/)
- [tmux](https://github.com/tmux/tmux/wiki)
- [tmuxinator](https://github.com/tmuxinator/tmuxinator)
- [neovim](https://neovim.io)
- [fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#using-homebrew)

## Install

```
git clone git@github.com:lucasprag/dotfiles.git ~/.config

# tmux
brew install tmux
ln -sf ~/.config/tmux.conf ~/.tmux.conf

# install tmux plugins
mkdir -p ~/.tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# ctrl+b + I to install plugins

# tmuxinator
curl https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh > ~/.dotfiles/tmuxinator/tmuxinator.zsh
ln -sf ~/.config/tmuxinator ~/.tmuxinator

# neovim
brew install neovim
# install Plug https://github.com/junegunn/vim-plug?tab=readme-ov-file#neovim
# Follow instructions from nvim/README.md

# hammerspoon
ln -s ~/.config/hammerspoon/init.lua ~/.hammerspoon/init.lua

# make typing great again -- re-pair bluetooth keyboard required to make it work
defaults write -g InitialKeyRepeat -int 13
defaults write -g KeyRepeat -int 1

# after installing vscode. Restart vscode.
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# install macos apps
spotify postico keepingyouawake alacritty Clipy
```
