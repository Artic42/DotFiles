#!/bin/sh
read -p "Do you want to reboot the system?(y/n)" response
if [ "$response" == "y" ]; then
	sudo reboot
fi
