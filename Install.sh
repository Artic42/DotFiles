#!/bin/bash

#Clone DotFiles
cd ~
git clone https://github.com/artic42/DotFiles.git

#Copy config files to home directory
cd DotFiles
#Config Vim
cp -rf vim ~/.vim
cp -f vimrc ~/.vimrc
#Add necesary plugins to the standard plugin managerfor vim 8.XX
cd ~/.vim/pack/artic/start/
#NERDTree
git clone https://github.com/preservim/nerdtree.git
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q
#Vim-airline
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/vim-airline/vim-airline-themes.git
#Gruvbox colorscheme
git clone https://github.com/morhetz/gruvbox.git
#Config Tmux
cd ~/DotFiles
cp -f tmux.conf ~/.tmux.conf
cp -rf tmux ~/.tmux
#Config bash
cat append-bash >> ~/.bashrc
cp -rf userbin ~/bin
#Config powerline
cp -rf powerline-shell ~/.config/


#Last order is to reboot
