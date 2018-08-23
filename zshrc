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

# devops
alias compose="docker-compose"
alias c="docker-compose" # even more pro
alias cup="compose up" # sometimes c up becomes cup
alias k="kubectl"
alias v="vagrant"

alias dexec='_dexec(){ docker exec -ti $1 /bin/bash; }; _dexec'
alias drmi='docker rmi $(docker images -a --filter=dangling=true -q)'
alias drm='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'

# util
alias dotfiles="cd ~/.dotfiles"
alias dotspacemacs="cd ~/.spacemacs.d"
alias vimlociraptor="cd ~/.config/nvim ; nvim \+NERDTreeToggle"
alias notes="cd ~/Dropbox/devnotes ; nvim \+NERDTreeToggle"
alias ex="cd ~/Projects/exercism"
alias m="make"
alias n="nvim"

alias weather="curl -4 http://wttr.in"

# maple-labs
alias maple="cd ~/Projects/maple-labs"

# labs
alias labs="cd ~/Projects/labs"

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# node
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# dotfiles git functions
export PATH="$HOME/.dotfiles/git:$PATH"

# true color for tmux
alias tmux="env TERM=xterm-256color tmux"

# tmuxinator
source ~/.dotfiles/tmuxinator/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true

# helpers - I don't know where save this
# docker run --rm --userns host -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc

# python
eval "$(pipenv --completion)"
