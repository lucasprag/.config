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

alias dexec='_dexec(){ docker exec -ti $1 /bin/bash; }; _dexec'
alias drmi='docker rmi $(docker images -a --filter=dangling=true -q)'
alias drm='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'

# util
alias dotfiles="cd ~/.dotfiles"
alias vimlociraptor="cd ~/.config/nvim ; nvim \+NERDTreeToggle"
alias notes="cd ~/Dropbox/devnotes ; nvim \+NERDTreeToggle"
alias ex="cd ~/Projects/exercism"
alias m="make"
alias n="nvim"

# maple-labs
alias maple="cd ~/Projects/maple-labs"

# iugu
alias iugu="cd ~/Projects/iugu"
alias dep='docker exec -ti developmentstack_platform_1 /bin/bash'
alias again="c build platform ; cup"
alias dcp='_dexec(){ docker cp $1 developmentstack_platform_1:app/; }; _dexec'

# labs
alias labs="cd ~/Projects/labs"

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

# go
export PATH=$PATH:/usr/local/go/bin
