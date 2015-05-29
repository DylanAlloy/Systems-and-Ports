#!/bin/bash
echo "Read scan output? [y/n]"
read opt
while [ "$opt" != "y" ] && [ "$opt" != "n" ]; do
	echo "Not a valid option!"
	sleep 2
exit
done

	case $opt in
		y)
		. ips.sh
			grep -e "Host is up" logs/$ans.txt
			grep -e "Port" logs/$ans.txt
			grep -e "Running" logs/$ans.txt
			grep -e "No exact OS matches for host" logs/$ans.txt
			grep -e "Uptime" logs/$ans.txt
			echo "Press any key to SSH, exit yourself if you're done."
			read
			clear
			. ssh.sh

	;;
		n)
		echo "The log is in logs/"
		sleep 2
	;;
esac
exit
