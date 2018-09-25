# https://www.digitalocean.com/community/tutorials/how-to-list-and-delete-iptables-firewall-rules
iptables -D INPUT -j INET_IN_PORT
iptables -D OUTPUT -j INET_OUT_PORT
iptables -F INET_OUT_PORT
iptables -F INET_IN_PORT 
iptables -X INET_OUT_PORT
iptables -X INET_IN_PORT 
