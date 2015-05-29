echo "Would you like to scan using a single IP, a subnet or all of the servers in the database?"
echo "1. IP"
echo "2. Subnet"
echo "3. All"
read choice
clear
case "$choice" in
	1)
		# TIME TO SHOW IPS
		echo "Address:"
		. ips.sh
		sleep 2
		clear
		echo "Scanning, keep your pants on..."
		nmap -O -v $ans > logs/$ans.txt
	wait
		echo "Saved to logs/$ans.txt!"
		sleep 1
		. read.sh		
	;;
	2)
		echo "Please enter a subnet i.e. 10.*.1.1"
		read subnet
		sleep 2
		clear
		echo "Scanning, this might be a while since you're scanning a whole subnet. Seriously. Go get coffee..."
		nmap -O -v $subnet > logs/$subnet.txt
	wait
		echo "Saved to logs/$subnet.txt!"
		sleep 1
		. read.sh
	;;
	3)
		echo "All IPs selected."
		sleep 2
		clear
		echo "Scanning but this will be some time, I will check progress..."
		nmap -O -v -iL ips.txt > logs/allofthem.txt
	wait
		echo "Saved to logs/all.txt!"
		sleep 1
		. ccbcssh.sh
	wait
	;;
esac
