iptables -D INPUT 1; 
iptables -D OUTPUT 1;
iptables -A INPUT -p tcp --dport 514;
iptables -A OUTPUT -p tcp --sport 514;
#iptables -nv -l
#iptables -nv -L


