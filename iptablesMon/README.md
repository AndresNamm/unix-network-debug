# INTRO 

If the rmPorMonitor.sh does not work first time run many times. There could me maby chains added to INPUT or OUTPUT chain with the same name. 
Stupid, I know. 

# EXAMPLES 

~~~
[iptablesMon]# ./showIptables.sh INET_IN_PORT
pe 5.10.2018 16.08.51 +0300,  544954 820956759            tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            tcp dpt:5140
[iptablesMon]# ./showIptables.sh INET_OUT_PORT
pe 5.10.2018 16.09.03 +0300, 2794166 145311744            tcp  --  *      *       0.0.0.0/0            0.0.0.0/0            tcp spt:5140
~~~
