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

# 2mundos
alias 2m="cd ~/projects/2mundos"
alias labs="cd ~/projects/labs"
alias bad="meteor --settings settings.json"
alias wat="echo '¯\_(ツ)_/¯'" # util to copy and paste

# Tarvos Games
alias tarvos="cd ~/projects/tarvos"
alias ski="cd ~/projects/tarvos/ultimate-ski-api"

# util
alias dotfiles="cd ~/.dotfiles"
alias vimlociraptor="cd ~/.config/nvim"
alias ex="cd ~/projects/exercism"

# javascript
export PATH=/usr/local/bin/depot_tools:"$PATH"

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

# fuck!
eval "$(thefuck --alias)"

# android
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
