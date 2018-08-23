# make my development environment

# package manager
PACMAN=brew
LINKCOMMAND=ln -sf ~/.dotfiles

all: update ack zsh tmux neovim

update:
	$(PACMAN) update

ack:
	mv ~/.ackrc ~/.ackrc.original
	$(LINKCOMMAND)/ackrc ~/.ackrc

zsh:
	$(PACMAN) zsh
	mv ~/.zshrc ~/.zshrc.original
	$(LINKCOMMAND)/zshrc ~/.zshrc

tmux:
	$(PACMAN) tmux
	mv ~/.tmux.conf ~/.tmux.conf.original
	$(LINKCOMMAND)/tmux.conf ~/.tmux.conf
	mkdir -p ~/.tmux/plugins/tpm
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	curl https://raw.githubusercontent.com/tmuxinator/tmuxinator/master/completion/tmuxinator.zsh > ~/.dotfiles/tmuxinator/tmuxinator.zsh

neovim:
	# install tmux
	# install neovim
	mkdir ~/.config
	git clone git@github.com:lucasprag/vimlociraptor.git ~/.config/nvim/
	git clone git@github.com:powerline/fonts.git ~/Downloads/fonts
	~/Downloads/fonts/install.sh
	mkdir -p ~/.vim/bundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
	nvim \+PluginInstall \+qa

