# ~/.dotfiles

My personal dot files.

## Dependencies

- [fish](https://fishshell.com/)
- [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
- [rbenv](https://github.com/rbenv/rbenv)
- [ruby-build](https://github.com/rbenv/ruby-build#installing-as-an-rbenv-plugin-recommended)
- [Alacritty](https://github.com/jwilm/alacritty)
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
mv ~/.config/omf ~/.config/omf_original
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

# better git log -p
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# hammerspoon
ln -s ~/.hammerspoon/ ~/.dotfiles/hammerspoon/

```
