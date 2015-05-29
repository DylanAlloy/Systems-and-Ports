#!/bin/bash


#INTRODUCTION
echo "------------"
tput setaf 3
echo Systems and Ports Copyright "(C) 2013 Dylan Moore"
tput sgr0
echo "This program comes with ABSOLUTELY NO WARRANTY; for details see the git."
echo "This is free software, and you are welcome to redistribute it"
echo "under certain conditions, see the git for more info."
echo "------------"

#DISTRO DETECT
	if [ -f /etc/debian_version ]; then
                PKG0=$(dpkg-query -W --showformat='${Status}\n' zenity|grep "install ok installed")
                if [ "" == "$PKG0" ]; then
                        sudo apt-get --force-yes --yes install zenity
                        notify-send "Zenity GUI elements installed"
                fi
		PKG1=$(dpkg-query -W --showformat='${Status}\n' libnotify-bin|grep "install ok installed")
		if [ "" == "$PKG1" ]; then
			sudo apt-get --force-yes --yes install libnotify-bin
			notify-send "Systems & Ports Notifications (libnotify) installed."
		fi
wait
		PKG2=$(dpkg-query -W --showformat='${Status}\n' nmap|grep "install ok installed")
			echo Checking for nmap installation...
		if [ "" == "$PKG2" ]; then
			echo "No nmap installation detected. Setting up nmap..."
  			sudo apt-get --force-yes --yes install nmap
  			notify-send "Network Mapper (nmap) installed."
		fi
	

	else
                PKG0=$(dpkg-query -W --showformat='${Status}\n' zenity|grep "install ok installed")
                if [ "" == "$PKG0" ]; then
                        sudo yum --force-yes --yes install zenity
                        notify-send "Zenity GUI elements installed"
                fi
		PKG1=$(dpkg-query -W --showformat='${Status}\n' libnotify-bin|grep "install ok installed")
		if [ "" == "$PKG1" ]; then
			sudo yum --force-yes --yes install libnotify-bin
			notify-send "Systems & Ports Notifications (libnotify) installed."
		fi
wait
		PKG2=$(dpkg-query -W --showformat='${Status}\n' nmap|grep "install ok installed")
			echo Checking for nmap installation...
		if [ "" == "$PKG2" ]; then
  			echo "No nmap installation detected. Setting up nmap..."
  			sudo yum --force-yes --yes install nmap
  			notify-send "Network Mapper (nmap) installed."
		fi
	
	fi
	

sleep 3
clear

# TIME TO ASK WHAT THEY WANT
. menu.sh

