###########################
#  zsh configuration
###########################

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="cloud"

plugins=(git)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='nvim'
export SHELL=zsh

# docker
alias compose="docker-compose"

# util
alias dotfiles="cd ~/.dotfiles"
alias vimlociraptor="cd ~/.config/nvim"
alias ex="cd ~/projects/exercism"

# site de sucesso
alias sitedesucesso="cd ~/projects/sitedesucesso"

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# dotfiles git functions
export PATH="$HOME/.dotfiles/git:$PATH"

# tmuxinator
source ~/.dotfiles/tmuxinator/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true
