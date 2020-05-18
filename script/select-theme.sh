#!/bin/bash
read -p "What theme do yu want Light or Dark?" response
if [ "$response" == "l" ]; then
	cp ~/.vim/theme/vim-theme-light ~/.vim/theme/vim-theme
	cd ~/.urxvt
	rm -f Xresources.conf
	cat urxvt-colors.conf urxvt-light.conf urxvt.conf >> Xresources.conf
	xrdb Xresources.conf
	cd ~/.config/powerline-shell/themes
	cp gurvbox-dark.py gruvbox.py
fi

if [ "$response" == "d" ]; then
	cp ~/.vim/theme/vim-theme-dark ~/.vim/theme/vim-theme
	cd ~/.urxvt
	rm -f Xresources.conf
	cat urxvt-colors.conf urxvt-dark.conf urxvt.conf >> Xresources.conf
	xrdb Xresources.conf
	cd ~/.config/powerline-shell/themes
	cp gurvbox-light.py gruvbox.py
fi

