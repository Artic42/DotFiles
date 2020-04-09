#!/bin/bash

#Update the entire system
yes | sudo apt-get update
yes | sudo apt-get dist-upgrade

#Install basic programs
yes | sudo apt-get install git gcc gdb vim python3 python3-pip neofetch exuberant-ctags tmux make
yes | sudo pip3 install powerline-shell

#Clone DotFiles
cd ~
git clone https://github.com/artic42/DotFiles.git

#Execute non-distro dependeding part
sh ~/DotFiles/script/copy_conf.sh

#Last order is to reboot
~/.script/prompt_reboot.sh
