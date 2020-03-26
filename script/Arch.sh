#!/bin/sh

#Update the entire system
yes | sudo pacman -Syu

#Install basic programs
yes | sudo pacman -S git gcc gdb vim python3 python3-pip neofetch ctags tmux make
yes | sudo pip3-install powerline-shell

#Execute non-distro dependeding part
source ~/DotFiles/script/copy_conf.sh

#Last order is to reboot
sudo reboot
