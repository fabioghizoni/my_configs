#!/bin/sh

#Script para configurar terminal e neovim.

DIR_NVIM=~/.config/nvim
DIR_FONTS=~/.fonts
FILE_ZSH=~/.zshrc
FILE_TMUX=~/.tmux.conf


#CONFIGURA O ZSH - o zsh deve ser instalado manualmente, estes comandos
#		   instalam e configuram o oh-my-zsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if [ ! -d "$DIR_FONTS" ]; then
	git clone https://github.com/powerline/fonts.git --depth=1
	fonts/install.sh
	rm -rf fonts
fi

cat zshrc > $FILE_ZSH
chsh -s $(which zsh)


#CONFIGURA O TMUX - o tmux deve ser instalado na maquina manualmente.
cat tmux.conf > $FILE_TMUX


#CONFIGURA O NVIM - o neovim deve ser instalado na maquina manualmente,
#		    ao final, os plugins sao instalados e deve-se sair
#		    da sessao aberta do vim.
if [ ! -d "$DIR_NVIM" ]; then
	mkdir $DIR_NVIM
fi

cp init.vim $DIR_NVIM

if [ ! -d "$DIR_NVIM/autoload" ]; then
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
nvim -E -c "PlugInstall"
