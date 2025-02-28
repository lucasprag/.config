# ~/.config

My personal dot files.

```
git clone git@github.com:lucasprag/.config.git ~/.config
```

## Setup zsh

- install zsh and oh-my-zsh.

```
mv ~/.zshrc ~/.zshrc-backup # delete it later
ln -sf ~/.config/zshrc ~/.zshrc
```

- install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
- install [zsh-abbr](https://github.com/olets/zsh-abbr)

# Setup asdf
- [asdf](https://github.com/asdf-vm/asdf), [asdf-ruby](https://github.com/asdf-vm/asdf-ruby), [asdf-elixir](https://github.com/asdf-vm/asdf-elixir), [asdf-nodejs](https://github.com/asdf-vm/asdf-nodejs), [asdf-erlang](https://github.com/asdf-vm/asdf-erlang), [asdf-python](https://github.com/asdf-community/asdf-python).

# Setup Neovim

- [neovim](https://neovim.io)

brew install neovim
# install Plug https://github.com/junegunn/vim-plug?tab=readme-ov-file#neovim
# Follow instructions from nvim/README.md

# Install MacOS apps
- [Hammerspoon](https://www.hammerspoon.org/)
- [KeepingYouAwake](https://keepingyouawake.app/)
- [VSCode](https://code.visualstudio.com/)
- [Clipy](https://github.com/Clipy/Clipy)
- [Postico](https://eggerapps.at/postico/v1.php)


```
# hammerspoon
ln -s ~/.config/hammerspoon/init.lua ~/.hammerspoon/init.lua

# make typing great again -- re-pair bluetooth keyboard required to make it work
defaults write -g InitialKeyRepeat -int 13
defaults write -g KeyRepeat -int 1

# after installing vscode. Restart vscode.
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

# Misc

- [Powerline fonts](https://github.com/powerline/fonts)
- [fzf](https://github.com/junegunn/fzf?tab=readme-ov-file#using-homebrew)
