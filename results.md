tmp tcpdump 38431
tmp2 nc 1009
iptables INET_IN_PORT 6637
tmp3 tcpdump grep "<[0-9]>" 1177
tmp4 tcpdump grep -v "Flags"
