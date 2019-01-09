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
alias dexec='_dexec(){ docker exec -ti $1 /bin/bash; }; _dexec'
alias drmi='docker rmi $(docker images -a --filter=dangling=true -q)'
alias drm='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
# docker run --rm --userns host -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc

alias dotfiles="cd ~/.dotfiles"
alias vimlociraptor="cd ~/.config/nvim ; nvim \+NERDTreeToggle"
alias spacevim="cd ~/.SpaceVim ; nvim \+NERDTreeToggle"
alias notes="nvim ~/Dropbox/devnotes"
alias todo="cd ~/Dropbox/devnotes ; nvim todo.md"
alias m="make"
alias n="nvim"
alias s="subl"

alias weather="curl -4 http://wttr.in"

alias labs="cd ~/Projects/labs"
alias maple="cd ~/Projects/maple-labs"
alias wat="echo '¯\_(ツ)_/¯' | pbcopy"

# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias rbenv-update='cd ~/.rbenv/plugins/ruby-build/ ; git pull ; cd -'

# rails
export WEBPACKER_DEV_SERVER_HOST=0.0.0.0

# elixir
alias pc="iex -S mix phx.server"

# node
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# dotfiles git functions
export PATH="$HOME/.dotfiles/git:$PATH"
export PATH="$PATH:/usr/local/bin"

# true color for tmux
alias tmux="env TERM=xterm-256color tmux -2"

# tmuxinator
source ~/.dotfiles/tmuxinator/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true

# python
eval "$(pipenv --completion)"

# emacs
alias dotemacs="cd ~/.emacs.d"
alias dotdoom="cd ~/.doom.d"
export PATH="$PATH:/Users/lucasoliveira/.emacs.d/bin"

# top secret stuff
source ~/.private

# fera
alias banana="cd ~/Projects/fera"
#alias fera="~/projects/fera/fera/exe/fera"
#eval $(fera completion_script)

# slow down sidekiq
export SIDEKIQ_CONCURRENCY=1
export CONCURRENCY_EVENT_NOTIFS=1
export CONCURRENCY_EVENT_ORDER_PROCESS=1
export CONCURRENCY_JOURNEYS=1
