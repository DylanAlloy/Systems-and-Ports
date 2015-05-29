

# ARRAY FROM IPS IN IPS.TXT
unset list
while read -r line
do

    list+=("$line")
done < ips.txt

# DISPLAY THE DIALOG
ans=$(zenity --list --text "IP adddresses" --column "List" "${list[@]}" --separator=":")
echo $ans    

