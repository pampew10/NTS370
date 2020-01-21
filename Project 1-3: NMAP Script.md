---
# UAT NTS370 Project 1.3 NMAP Script
---
### Code used for the script will be below
---
#!/bin/bash

#this is the starting section for the script grabbing a starting number for the script to function properly.

echo "type your starting point for the ending number of the IP being scanned. 192.168.1.x"

read starting

echo "Your starting number is $starting-x"

#this area checkes if the number is smaller then 1 as if it was it would not be valid for future commands.

if [ $starting -lt 1 ]

then

echo "this number is to small please try again"

exit

else
echo "moving on"

fi

#This section takes the end number for the script to function properly with "ending" as the ending number.

echo "type your ending point for the ending number of the IP being scanned. 192.168.1.x"

read ending

echo "Your range selected is $starting-$ending aka 192.168.1.$starting-$ending"


#this section of the script defines whether the ending exceeds the set standard for IP addresses in this scenario.

if [ $ending -gt 256 ]

then

echo "this number is too much please try again"

exit

else

echo "Processing scan"

#nmap using the defined numbers previously to perform a scan of the specific IP addresses using a for loop.

for i in $(seq $starting $ending); do nmap 192.168.1.$i; done > nmapoutput#2

fi

echo "scan output to file nmapoutput#2"

---

+ This is the primary script and a picture of the script in VIM on my personal machine will be included below
![](https://github.com/pampew10/NTS370/blob/master/Screenshotforclass)
---
