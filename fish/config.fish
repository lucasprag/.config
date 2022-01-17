###########################
#  fish configuration
###########################

#if status --is-login
set -x LANG en_US.UTF-8
set -x EDITOR 'nvim'
set -x SHELL fish

# ruby
# set -Ux fish_user_paths $HOME/.rbenv/bin $fish_user_paths
set -x WEBPACKER_DEV_SERVER_HOST 0.0.0.0

# needed for homebrew
#set -x PATH $PATH /usr/local/opt/node@10/bin
#set -x PATH $PATH /usr/local/sbin

### Added by the Heroku Toolbelt
#set -x PATH "/usr/local/heroku/bin:$PATH"

### needed for flask
#set -x PYTHON /usr/local/bin/python3
#alias python python3
#alias pip pip3

### android
#set -x ANDROID_HOME $HOME/Library/Android/sdk
#set -x PATH $PATH:$ANDROID_HOME/emulator
#set -x PATH $PATH:$ANDROID_HOME/tools
#set -x PATH $PATH:$ANDROID_HOME/tools/bin
#set -x PATH $PATH:$ANDROID_HOME/platform-tools

### source secret stuff
source ~/.private

## abbreviations
abbr -a compose docker-compose
abbr -a code code-insiders
abbr -a c code-insiders
abbr -a s subl
abbr -a cup docker-compose up -d
abbr -a cs docker-compose stop
abbr -a n nvim
abbr -a m make
abbr -a f foreman
abbr -a fr foreman run
abbr -a frb foreman run bundle exec
abbr -a fs foreman start
abbr -a t foreman run bundle exec rspec
abbr -a p foreman run bundle exec puma -C ./config/puma.rb
abbr -a e ember
abbr -a fn "fzf | xargs nvim"
abbr -a r "omf reload"

## dot directories
abbr -a dotfiles cd ~/.dotfiles
abbr -a dotemacs cd ~/.emacs.d
abbr -a vimlociraptor cd ~/.config/nvim
abbr -a simpleblack cd ~/.config/nvim/plugged/simpleblack
abbr -a dotsublime cd ~/Library/Application\\ Support/Sublime\\ Text\\ 3/
abbr -a notes cd ~/Dropbox/devnotes

# elixir
abbr -a pc "iex -S mix phx.server"

# ruby
#abbr -a rbenv-update "cd ~/.rbenv/plugins/ruby-build/ ; git pull ; cd -"
abbr -a bi bundle install
abbr -a be bundle exec

# personal
abbr -a labs cd ~/Projects/labs
abbr -a grok cd ~/Projects/grokblog
abbr -a blog cd ~/Projects/lucasprag
abbr -a igc cd ~/Projects/igc
abbr -a ipb cd ~/Projects/ipbpedronunes
abbr -a maple cd ~/Projects/maple

# smile
abbr -a smile cd ~/Projects/smile
abbr -a core cd ~/Projects/smile/smile-core
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
abbr -a shit "echo ┻━┻︵ \(°□°)/ ︵ ┻━┻ | pbcopy"
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
abbr -a gpick "git cherry-pick"
abbr -a grmu "git status -s | awk '{ print $2 }' | xargs rm"
abbr -a gp 'git pull origin (current_branch)'
abbr -a gP 'git push origin (current_branch)'

source ~/.asdf/asdf.fish

### Personal Mac
#if string match -r 'panelavelha' (uname -n) > /dev/null

  # asdf
  #source ~/.asdf/asdf.fish

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

#else
  #echo "Something is wrong with your configs Lucas!"
#end

