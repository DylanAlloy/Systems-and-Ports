#PRETTY SYSTEM MENU
tput setaf 3
echo "Systems & Ports"
tput sgr0
 
tput cup 5 17
tput rev
echo "M A I N - M E N U"
tput sgr0
 
tput cup 7 15
echo "1. Find Linux Servers"
 
tput cup 8 15
echo "2. Get Release Info"
 
tput bold
tput cup 12 15
read -p "Enter your choice [1-2] " choice

#CLEAR PRETTY MENU
tput clear
tput sgr0
tput rc

case "$choice" in
	1)
	
	. 1.sh
	;;
	2)
	
	. ips.sh
	echo "User:"
	read user
	echo "Password:"
	read pass
	echo "Saving release info for $ans to /home/..."
	sleep 2
	scp $user@$ans:dist$ans.txt /home/dist$ans.txt > /dev/null
	wait
	echo "Release info saved to /home/!"
	echo "Press any key to exit..."
	read
	;;
esac

