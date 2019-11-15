###########################
#  fish configuration
###########################

set -x LANG en_US.UTF-8
set -x EDITOR 'nvim'
set -x SHELL fish

# ruby
# set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths
set -x WEBPACKER_DEV_SERVER_HOST 0.0.0.0

# needed for homebrew
set -x PATH $PATH /usr/local/opt/node@10/bin
set -x PATH $PATH /usr/local/sbin

### Added by the Heroku Toolbelt
set -x PATH "/usr/local/heroku/bin:$PATH"

### needed for flask

set -x FLASK_APP flaskr
set -x FLASK_ENV development

### source secret stuff
source ~/.private

## abbreviations
abbr -a compose docker-compose
abbr -a cup docker-compose up
abbr -a dotfiles cd ~/.dotfiles
abbr -a dotemacs cd ~/.emacs.d
abbr -a emacses cd ~/Projects/emacses
abbr -a vimlociraptor cd ~/.config/nvim
abbr -a dotsublime cd ~/Library/Application\\ Support/Sublime\\ Text\\ 3/
abbr -a notes cd ~/Dropbox/devnotes
abbr -a n nvim
abbr -a m make
abbr -a c code
abbr -a f foreman
abbr -a fr foreman run
abbr -a frb foreman run bundle exec
abbr -a fs foreman start
abbr -a t foreman run bundle exec rspec

# elixir
abbr -a pc iex -S mix phx.server

# ruby
abbr -a rbenv-update "cd ~/.rbenv/plugins/ruby-build/ ; git pull ; cd -"
abbr -a bi bundle install
abbr -a be bundle exec

# personal
abbr -a labs cd ~/Projects/labs
abbr -a maple cd ~/Projects/maple-labs
abbr -a grok cd ~/Projects/grok/grok_talks
abbr -a blog cd ~/Projects/grok/grokblog
abbr -a shop cd ~/Projects/grok/grokshop
abbr -a prag cd ~/Projects/grok/pragmatic-alchemist
abbr -a igc cd ~/Projects/igc

# fera
abbr -a banana cd ~/Projects/fera/bananastand

# smile
abbr -a smile cd ~/Projects/smile
abbr -a core cd ~/Projects/smile/api.sweettooth.io
abbr -a internal cd ~/Projects/smile/smile-internal
abbr -a admin cd ~/Projects/smile/smile-admin
abbr -a rfcs cd ~/Projects/smile/rfcs
abbr -a BI cd ~/Projects/smile/smile-bi
abbr -a UI cd ~/Projects/smile/smile-ui
abbr -a a tmux a -t

# misc
abbr -a https http --default-scheme=https
abbr -a weather curl wttr.in
abbr -a clima curl wttr.in
abbr -a wat "echo '¯\_(ツ)_/¯' | pbcopy"
abbr -a hein "echo ❨╯°□°❩╯︵┻━┻ | pbcopy"
abbr -a bro "echo igso-on | pbcopy"
abbr -a mux tmuxinator

# git
abbr -a gss git status -s
abbr -a gco git checkout
abbr -a gc git commit
abbr -a gp git push
abbr -a gb git branch
abbr -a ga git add
abbr -a gd git diff
abbr -a gl git lg
abbr -a gu "git status -s | grep UU"
abbr -a gr "git remote -v"

# rbenv
status --is-interactive; and source (rbenv init -|psub)