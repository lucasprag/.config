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
# alias c="docker-compose" # even more pro
alias cup="compose up" # sometimes c up becomes cup
alias k="kubectl"
alias dexec='_dexec(){ docker exec -ti $1 /bin/bash; }; _dexec'
alias drmi='docker rmi $(docker images -a --filter=dangling=true -q)'
alias drm='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
# docker run --rm --userns host -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc spotify/docker-gc

alias dotfiles="cd ~/.dotfiles"
alias dotemacs="cd ~/.emacs.d"
alias vimlociraptor="cd ~/.config/nvim"
alias notes="cd ~/Dropbox/devnotes ; nvim notes.md"
alias n="nvim"
alias m="make"
alias c="code"
alias f="foreman"
alias fr="foreman run"
alias frb="foreman run bundle exec"
alias fs="foreman start"
alias t="foreman run bundle exec rspec"
alias push="git push origin master"

alias weather="curl wttr.in"
alias clima="curl wttr.in" # pt-br

alias wat="echo '¯\_(ツ)_/¯' | pbcopy"
alias hein="echo ❨╯°□°❩╯︵┻━┻ | pbcopy"
alias bro='echo igso-on | pbcopy'

# elixir
alias pc="iex -S mix phx.server"


# ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
alias rbenv-update='cd ~/.rbenv/plugins/ruby-build/ ; git pull ; cd -'


alias labs="cd ~/Projects/labs"
alias maple="cd ~/Projects/maple-labs"
alias grok="cd ~/Projects/grok/grok_talks"

# rails
export WEBPACKER_DEV_SERVER_HOST=0.0.0.0

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# dotfiles git functions
export PATH="$HOME/.dotfiles/git:$PATH"
export PATH="$PATH:/usr/local/bin"

# true color for tmux
# alias tmux="env TERM=xterm-256color tmux -2"

# tmuxinator
source ~/.dotfiles/tmuxinator/tmuxinator.zsh
export DISABLE_AUTO_TITLE=true

# top secret stuff
source ~/.private

# fera
alias banana="cd ~/Projects/fera/bananastand"
#alias fera="~/projects/fera/fera/exe/fera"
#eval $(fera completion_script)

# smile
alias smile="cd ~/Projects/smile"
alias smile-api="cd ~/Projects/smile/api.sweettooth.io"
alias smile-admin="cd ~/Projects/smile/smile-admin"

# needed for homebrew
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/node@10/bin:$PATH"

alias https='http --default-scheme=https'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
