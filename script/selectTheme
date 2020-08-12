#!/bin/bash
read -p "What theme do yu want Light or Dark?" response
if [ "$response" == "l" ]; then
	cp ~/.vim/theme/vim-theme-light ~/.vim/theme/vim-theme
	cd ~/.urxvt
	rm -f ~/.Xresources
	cat urxvt-colors.conf urxvt-light.conf urxvt.conf >> ~/.Xresources
	xrdb ~/.Xresources
	cd ~/.config/powerline-shell/themes
	cp gruvbox-light.py gruvbox.py
fi

if [ "$response" == "d" ]; then
	cp ~/.vim/theme/vim-theme-dark ~/.vim/theme/vim-theme
	cd ~/.urxvt
	rm -f ~/.Xresources
	cat urxvt-colors.conf urxvt-dark.conf urxvt.conf >> ~/.Xresources
	xrdb ~/.Xresources
	cd ~/.config/powerline-shell/themes
	cp gruvbox-dark.py gruvbox.py
fi

