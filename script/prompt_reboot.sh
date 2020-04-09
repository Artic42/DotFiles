#!/bin/bash
read -p "Do you want to reboot the system?(y/n)" response
echo $response
if [ "$response" == "y" ]; then
	sudo reboot
fi
