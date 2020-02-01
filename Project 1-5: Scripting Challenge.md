---
# UAT NTS370 Project 1.5 Scripting Challenge
---
### Code used for the script will be below
---
#!/bin/bash

#author - Andrew M

#NMAP script that applies rules to script.

#does an nmap scan of the local host device. Also outputs the nmap scan into a grepable file.

nmap 127.0.0.1 -oN testfile > /dev/null 2>&1

#uses awk to grab certain characters from testfile and funnels them into a newfile.

awk '{print $1}' testfile > newfile

#Pulls only numbers from the previous newfile and funnels it into a new file (newfile2)

grep -E [0-9] newfile > newfile2

#this for loop defines d=1 and adds 1 every loop until the number 200 is reached.

#This 200 limit is only a cap and will not mostlikely ever actually be used.

for (( d=1; d<=200; d++ ))

do

#test2 is the variable being assigned to the whatever number line is being used according to the for loop

test2=$(sed -n "$d"p newfile2)

#if statement checking the contents of the new variable to see if it contains anything.

  if [ -z "$test2" ]; then

#if the contents of the new variable dont have anything the program is exited.

  exit

    fi
 
#echo asking whether or not the user wants to disable the port.

echo Do you want to disable this port? yes/no

#displays the specified line in the text file for the variable "d" according to the for loop.

sed -n "$d"p newfile2

#grabs the input from the user and assigns it to the variable input.

read input

#reads the input and determines whether it = "yes" and if it is it applies a ufw rule based on the previous test variable with the content of the port and protocol.

if [ $input == 'yes' ]; then

  echo "Thanks for the input! Moving on."; sudo ufw deny "$test2"

fi

#this checks if the input is no and echos a message and moves on.

if [ $input == 'no' ]; then

  echo "Thanks for the input! Moving on."

fi

done

---

# Here is the script https://github.com/pampew10/NTS370/blob/master/1-5script.sh

---

+ This is the primary script and a picture of the script in VIM on my personal machine will be included below
![](https://github.com/pampew10/NTS370/blob/master/1-5screenshot%231.png)
![](https://github.com/pampew10/NTS370/blob/master/1-5screenshot%232.png)
