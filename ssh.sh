. ips.sh
echo "User:"
read user
echo "Password:"
read pass
echo "Connecting to remote server $ans..."
echo "When in SSH, save distro using < sudo cat /etc/*-release > dist$ans.txt >"
echo "To collect release info, select option 2 from main menu of Systems & Ports."
sleep 2
ssh $user@$ans
sleep 2
echo $pass
lsb_release -a
read
clear
. menu.sh
