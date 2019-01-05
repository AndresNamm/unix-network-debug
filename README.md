# PUPROSE

The purpose of this repository is to collect different examples and scripts which help to monitor network and its throughput in unix systems





# SCENARIO 1 - SEND AND RECEIVE MESSAGES WITH NC IN LOCALHOST , LISTEN WITH TCPDUMP

**screen 1**
~~~
nc -l 0.0.0.0 514
~~~

+  [![asciicast](https://asciinema.org/a/YCUtYr7RdZ3BxlrTuu8VrtEVZ.png)](https://asciinema.org/a/YCUtYr7RdZ3BxlrTuu8VrtEVZ?speed=3)
+ listen to all interfaces on port 514

**screen2**
~~~
nc -p 515 0.0.0.0 514
~~~
+  [![asciicast](https://asciinema.org/a/kO5nFoE6Vw7z2VBA5IOGov3Vx.png)](https://asciinema.org/a/kO5nFoE6Vw7z2VBA5IOGov3Vx?speed=3)
+ send message from port 515 to my local computer every network interface port 514

**screen 3**
~~~
tcpdump -i any -A port 514
~~~
+ "-A" means ascii here
+ "-i any" means listen on every interface
+  [![asciicast](https://asciinema.org/a/OAYsRmexWqjPZXQduOSTtAuoK.png)](https://asciinema.org/a/OAYsRmexWqjPZXQduOSTtAuoK?speed=3)




# SCENARIO 2 - SEND MESSAGES WITH NC, LISTEN 1 ONLY INCOMING 2 ONLY OUTGOING WITH tcpdump

## INCOMING

+ screen 1
~~~
nc 213.180.19.66 3347
~~~
+ screen 2
~~~
tcpdump -A src host 213.180.19.66
tcpdump -n src host 213.180.19.66
~~~



## OUTCONG

+ screen 1
~~~
nc 213.180.19.66 3347
~~~
+ screen 2
~~~
tcpdump -A dst host 213.180.19.66
tcpdump -n dst host 213.180.19.66
~~~

## INCOMING/OUTCONG


+ screen 1
~~~
nc 213.180.19.66 3347
~~~
+ screen 2
~~~
tcpdump -A host 213.180.19.66
tcpdump -n host 213.180.19.66
~~~



# GENERAL GOOD TUTORIALS

## TCPDUMP  

+ [WITH EXPLANATIONS](https://hackertarget.com/tcpdump-examples/)
+ [SHORTER TUTORIAL WITH COMMANDS](https://www.rationallyparanoid.com/articles/tcpdump.html)

## NC
