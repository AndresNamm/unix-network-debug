# SCENARIO 1 

execute tcp_dump_log_events.sh this listens on port 514 
you can pipeline the output to grep to search for info or send the output to file for later parsing 
then execute this command on the same server
nc -l -k -p 514

on other server you can send the sample packet like this 
nc drush.estpak.ee 514 -w 1 <<< "sstere"
or you could use the syslogGen.sh script to send syslog packages
