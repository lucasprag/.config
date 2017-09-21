###########################
#  zsh configuration
###########################

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud"

plugins=(git rails ruby bundler)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='nvim'
export SHELL=zsh

# docker
alias compose="docker-compose"
alias c="docker-compose" # even more pro
alias cup="compose up"

# util
alias dotfiles="cd ~/.dotfiles"
alias vimlociraptor="cd ~/.config/nvim"
alias ex="cd ~/Projects/exercism"

# site de sucesso
alias sitedesucesso="cd ~/Projects/sitedesucesso"

# Iugu
alias iugu="cd ~/Projects/iugu"

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# dotfiles git functions
export PATH="$HOME/.dotfiles/git:$PATH"

# true color for tmux
alias tmux="env TERM=xterm-256color tmux"

# tmuxinator
source ~/.dotfiles/tmuxinator/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
