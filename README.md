# ~/.dotfiles

My personal dot files.

## Dependencies

- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
- [rbenv](https://github.com/rbenv/rbenv)
- [ruby-build](https://github.com/rbenv/ruby-build#installing-as-an-rbenv-plugin-recommended)
- [tmux](https://github.com/tmux/tmux/wiki)
- [tmuxinator](https://github.com/tmuxinator/tmuxinator)
- [neovim](https://neovim.io)
- [vimlociraptor](https://github.com/lucasprag/vimlociraptor)

## Install

```
git clone git@github.com:lucasprag/dotfiles.git ~/.dotfiles

# zsh
brew install zsh
mv ~/.zshrc ~/.zshrc.original
ln -sf ~/.dotfiles/zshrc ~/.zshrc

# ack
brew install ack
mv ~/.ackrc ~/.ackrc.original
ln -sf ~/.dotfiles/ackrc ~/.ackrc

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

# rubymine
mv ~/.ideavimrc ~/.ideavimrc.original
ln -sf ~/.dotfiles/ideavimrc ~/.ideavimrc

# gemrc
mv ~/.gemrc ~/.gemrc.original
ln -s ~/.dotfiles/gemrc ~/.gemrc

```
