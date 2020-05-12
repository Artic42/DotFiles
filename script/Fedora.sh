#!/bin/bash

#Update the entire system
yes | sudo dnf upgrade

#Install basic programs
yes | sudo dnf install git gcc gdb vim python3 python3-pip neofetch exuberant-ctags tmux make rxvt-unicode
yes | sudo pip3 install powerline-shell

#Clone DotFiles
cd ~
git clone https://github.com/artic42/DotFiles.git

#Execute non-distro dependeding part
sh ~/DotFiles/script/copy_conf.sh

#Last order is to reboot
~/.script/prompt_reboot.sh
