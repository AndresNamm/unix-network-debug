tmpFile=flumeTemp
file=thPutFlume
rm -rf $tmpFile
timeout 10s sudo tcpdump -i any -A port 5140 2>/dev/null | grep '<[0-9]' >> $tmpFile
timestamp=$(date)
line=$(wc -l $tmpFile | grep -Eo '[0-9]+')
sizeKB=$(du $tmpFile | grep -Eo '[0-9]+')
echo "$timestamp,$line,$sizeKB" >> $file

