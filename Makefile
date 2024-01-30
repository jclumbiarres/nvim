dep:
	@echo "Bajando dependencias"
	@sudo apt install ripgrep fzf tmux fd-find build-essential git
	@git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@cp scripts/tmux-sessionizer $HOME/.local/bin
	@chmod +x $HOME/.local/bin/tmux-sessionizer
	@echo "Dependencias instaladas"

install:
	@nvim --headless +PackerSync +qall
