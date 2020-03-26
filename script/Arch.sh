#!/bin/sh

#Update the entire system
sudo pacman -Syu

#Install basic programs
sudo pacman -S git gcc gdb vim python3 python3-pip neofetch ctags tmux make
sudo pip3-install powerline-shell

#Execute non-distro dependeding part
source ~/.script/copy_conf.sh

#Last order is to reboot
sudo reboot
