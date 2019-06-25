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

## abbreviations
abbr -a compose docker-compose
abbr -a cup docker-compose up
abbr -a dotfiles cd ~/.dotfiles
abbr -a dotemacs cd ~/.emacs.d
abbr -a vimlociraptor cd ~/.config/nvim
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

abbr -a labs cd ~/Projects/labs
abbr -a maple cd ~/Projects/maple-labs
abbr -a grok cd ~/Projects/grok/grok_talks

# fera
abbr -a banana cd ~/Projects/fera/bananastand

# smile
abbr -a smile cd ~/Projects/smile
abbr -a smile-api cd ~/Projects/smile/api.sweettooth.io
abbr -a smile-admin cd ~/Projects/smile/smile-admin

# misc
abbr -a https http --default-scheme=https
abbr -a weather curl wttr.in
abbr -a clima curl wttr.in
abbr -a wat "echo '¯\_\(ツ\)_/¯' | pbcopy"
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

# rbenv
status --is-interactive; and source (rbenv init -|psub)
