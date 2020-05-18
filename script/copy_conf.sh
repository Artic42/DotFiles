#!/bin/bash
#Copy config files to home directory
cd ~/DotFiles

#Config Vim
rm -rf ~/.vim
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

#Go back to DotFiles
cd ~/DotFiles

#Config Tmux
cp -f tmux.conf ~/.tmux.conf
rm -rf ~/.tmux
cp -rf tmux ~/.tmux

#Config bash
cp -f bash_logout ~/.bash_logout
cp -f bash_profile ~/.bash_profile
cp -f bashrc ~/.bashrc

#Config powerline
rm -rf ~/.config/powerline-shell
cp -rf powerline-shell ~/.config/

#Config Urxvt
rm -rf ~/.urxvt
cp -rf urxvt ~/.urxvt

#Add binaries and scripts
rm -rf ~/.script
cp -rf script ~/.script
chmod -R u+x ~/.script
rm -rf ~/.bin
cp -rf bin ~/.bin
chmod -R u+x ~/.bin

#Add Templates
rm -rf ~/Templates
cp -rf Templates ~/Templates

#Choose theme
select-theme.sh
