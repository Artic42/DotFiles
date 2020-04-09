#!/bin/bash

#Update the entire system
yes | sudo pacman -Syu

#Install basic programs
yes | sudo pacman -S git gcc gdb vim python3 python3-pip neofetch ctags tmux make
yes | sudo pip3-install powerline-shell

#Clone DotFiles
cd ~
git clone https://github.com/artic42/DotFiles.git

#Execute non-distro dependeding part
~/DotFiles/script/copy_conf.sh

#Last order is to reboot
~/.script/prompt_reboot.sh
