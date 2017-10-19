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
alias again="c build platform ; cup"

# util
alias dotfiles="cd ~/.dotfiles"
alias vimlociraptor="cd ~/.config/nvim"
alias ex="cd ~/Projects/exercism"
alias m="make"
alias notes="cd ~/Dropbox/devnotes ; nvim \+NERDTreeToggle"

# site de sucesso
alias sitedesucesso="cd ~/Projects/sitedesucesso"

# iugu
alias iugu="cd ~/Projects/iugu"

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
