sudo tcpdump -i any -A port $1 2>/dev/null | grep '<[0-9]' 

