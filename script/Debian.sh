#!/bin/sh

#Update the entire system
sudo apt-get update
sudo apt-get dist-upgrade

#Install basic programs
sudo apt-get install git gcc gdb vim python3 python3-pip neofetch exuberant-ctags tmux make
sudo pip-install powerline-shell

#Execute non-distro dependeding part
source ~/.script/copy_conf.sh

#Last order is to reboot
sudo reboot
