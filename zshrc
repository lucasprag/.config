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
alias me="meteor"
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

export PATH="$HOME/.composer/vendor/bin:$PATH"

# tmuxinator
source ~/.dotfiles/tmuxinator/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true

# fuck!
eval "$(thefuck --alias)"

# android
export ANDROID_HOME="$HOME/Android/Sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export METEOR_PACKAGE_DIRS="$HOME/projects/2mundos/packages"

# java
export M2_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}
export BOOST_ROOT=/usr/local/boost_1_64_0/

# docker
export DOCKER_HOST="tcp://0.0.0.0:2375"

# php
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"
