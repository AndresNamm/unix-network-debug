### create a new set of chains ###
iptables -N INET_IN_PORT
iptables -N INET_OUT_PORT

### ATTACH them (USE FORWARD for gateway systems) ###
iptables -A INPUT -j INET_IN_PORT
iptables -A OUTPUT -j INET_OUT_PORT

# SET UP RULES FOR PORTS

iptables -A INET_IN_PORT -i team0 -p tcp --dport $1 
iptables -A INET_OUT_PORT -p tcp --sport $1


#iptables -nv -l
#iptables -nv -L


