

macchanger -l > mac.txt
fMac=$(shuf -n 1 mac.txt | awk '{print$3}' )
genMac=$(printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256] )
macchanger -m "$fMac:$genMac" eth0

echo "Your mac address has been changed"
