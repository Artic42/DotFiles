#!/bin/bash
read -p "Is the email you want to configure in the outlook.com domain?" response
if [ "$response" == "y" ]; then
	server="smtp.outlook.com:587"
fi
if [ "$response" == "n" ]; then
	read -p "Give the SMTP server adress:" server
fi

read -p "Give username:" usr
read -p "Give password:" pswd

mkdir -p ~/.data

echo $server > ~/.data/email_server
echo $usr > ~/.data/usr
echo $pswd > ~/.data/pswd

