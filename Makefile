
check:
	@echo "###############################################################################"
	@echo "                    dotfiles managment script                                  "
	@echo "###############################################################################"
	@echo "- HOME set to $(HOME)"
	@echo "- Use make install to install/update all files in HOME directory"
	@echo "- Use make update to update all config files in git repository"
	@echo "###############################################################################"

install: $(HOME)/.tmux.conf

$(HOME)/.tmux.conf: .tmux.conf
	@echo "Updating .tmux.conf in $(HOME)"
	cp .tmux.conf $(HOME)/.tmux.conf

$(HOME)/.gitconfig: .gitconfig
	@echo "Updating .gitconfig in $(HOME)"
	cp .gitconfig $(HOME)/.gitconfig

$(HOME)/.bashrc: .bashrc
	@echo "Updating .bashrc in $(HOME)"
	cp .bashrc $(HOME)/.bashrc

update:
	cp $(HOME)/.tmux.conf .tmux.conf
	cp $(HOME)/.gitconfig .gitconfig
	cp $(HOME)/.bashrc .bashrc
