# make my development environment

# package manager
PACMAN=sudo apt-get
LINKCOMMAND=ln -sf ~/.dotfiles

all:

update:
	$(PACMAN) update

spacemacs:
	rm -rf ~/.emacs*
	git clone git@github.com:syl20bnr/spacemacs.git ~/.emacs.d
	$(LINKCOMMAND)/emacs/spacemacs ~/.spacemacs

ack:
	mv ~/.ackrc ~/.ackrc.original
	$(LINKCOMMAND)/emacs/ackrc ~/.ackrc

