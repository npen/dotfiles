
check:
	@echo "###############################################################################"
	@echo "                    dotfiles managment script                                  "
	@echo "###############################################################################"
	@echo "- HOME set to $(HOME)"
	@echo "- Use make update to update all"
	@echo "###############################################################################"

update: $(HOME)/.tmux.conf

$(HOME)/.tmux.conf: .tmux.conf
	@echo "Updating .tmux.conf in $(HOME)"
	cp .tmux.conf $(HOME)/.tmux.conf

