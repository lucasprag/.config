###########################
#  fish configuration
###########################

#if status --is-login
set -x LANG en_US.UTF-8
set -x EDITOR nvim
set -x SHELL fish

set -x PATH /usr/local/bin $PATH

set -gx LDFLAGS -L/opt/homebrew/opt/libpq/lib
set -gx CPPFLAGS -I/opt/homebrew/opt/libpq/include
set -gx PKG_CONFIG_PATH /opt/homebrew/opt/libpq/lib/pkgconfig

# ruby
# set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths
set -x WEBPACKER_DEV_SERVER_HOST 0.0.0.0

# needed for homebrew in Apple Silicon
set -x PATH $PATH /opt/homebrew/bin/

# needed for signing commits
set -x GPG_TTY (tty)

## abbreviations
abbr -a compose docker-compose
abbr -a c code
abbr -a cup docker-compose up -d
abbr -a cs docker-compose stop
abbr -a n nvim
abbr -a f foreman
abbr -a fr foreman run
abbr -a frb foreman run bundle exec
abbr -a fs foreman start
abbr -a t foreman run bundle exec rspec
abbr -a p foreman run bundle exec puma -C ./config/puma.rb
abbr -a e ember
abbr -a fn "fzf | xargs nvim"
abbr -a r "omf reload"
abbr -a devnotes "cd ~/Google\ Drive/notes"

## dot directories
abbr -a dotfiles cd ~/.dotfiles
abbr -a vimlociraptor cd ~/.config/nvim
abbr -a simpleblack cd ~/.config/nvim/plugged/simpleblack

# elixir
abbr -a pc "iex -S mix phx.server"

# ruby
#abbr -a rbenv-update "cd ~/.rbenv/plugins/ruby-build/ ; git pull ; cd -"
abbr -a bi bundle install
abbr -a be bundle exec

# personal
abbr -a labs cd ~/Projects/labs
abbr -a blog cd ~/Projects/lucasprag
abbr -a ipb cd ~/Projects/ipbpedronunes

# smile
abbr -a smile cd ~/Projects/smile
abbr -a core cd ~/Projects/smile/smile-core
abbr -a internal cd ~/Projects/smile/smile-internal
abbr -a admin cd ~/Projects/smile/smile-admin
abbr -a rfcs cd ~/Projects/smile/rfcs
abbr -a BI cd ~/Projects/smile/smile-bi
abbr -a UI cd ~/Projects/smile/smile-ui
abbr -a customer cd ~/Projects/smile/squad-customer

# misc
abbr -a https http --default-scheme=https
abbr -a weather curl wttr.in
abbr -a clima curl wttr.in
abbr -a wat "echo '¯\_(ツ)_/¯' | pbcopy"
abbr -a hein "echo ❨╯°□°❩╯︵┻━┻ | pbcopy"
abbr -a shit "echo ┻━┻︵ \(°□°)/ ︵ ┻━┻ | pbcopy"
abbr -a bro "echo igso-on | pbcopy"
abbr -a mux tmuxinator
abbr -a a "arch -arm64"

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
abbr -a gk git cherry-pick
abbr -a grmu "git status -s | awk '{ print $2 }' | xargs rm"
abbr -a gp 'git pull origin (current_branch)'
abbr -a gP 'git push origin (current_branch)'

# Using asdf everywhere.
# source /opt/homebrew/opt/asdf/libexec/asdf.fish

### Personal Mac
#if string match -r 'panelavelha' (uname -n) > /dev/null

# asdf
source ~/.asdf/asdf.fish

### Personal Ubuntu
#else if string match -r 'frankenstein'  (uname -n) > /dev/null

# asdf -- installation via git
#source ~/.asdf/asdf.fish

### Work @ Smile
#else if string match -r 'smile-lucas' (uname -n) > /dev/null; or string match -r 'ec2' (uname -n) > /dev/null

# rbenv
# way faster than asdf to load in my work computer ¯\_(ツ)_/¯
#status --is-interactive; and source (rbenv init -|psub)

# volta.sh
#set -gx VOLTA_HOME "$HOME/.volta"
#test -s "$VOLTA_HOME/load.fish"; and source "$VOLTA_HOME/load.fish"
#string match -r ".volta" "$PATH" > /dev/null; or set -gx PATH "$VOLTA_HOME/bin" $PATH

set -x AWS_VAULT_KEYCHAIN_NAME login
# smile-cli pg creds smile-core --env prod --format=url

#else
#echo "Something is wrong with your configs Lucas!"
#end
