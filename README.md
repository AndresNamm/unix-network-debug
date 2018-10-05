# PUPROSE 

The purpose of this repository is to collect different examples and scripts which help to monitor network and its throughput in unix systems

# SCENARIO 1  TO RECEIVE MESSAGES

execute tcpdump  -i team0 port 514 -A  2>/dev/null this listens on port 514 
you can pipeline the output to grep to search for info or send the output to file for later parsing 
then execute this command on the same server
nc -l -k -p 514

on other server you can send the sample packet like this 
nc destination.ee 514 -w 1 <<< "sstere"
or you could use the syslogGen.sh script to send syslog packages
