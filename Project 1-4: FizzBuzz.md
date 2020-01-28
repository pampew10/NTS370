---
# UAT NTS370 Project 1.4 FIZZ BUZZ
---
### Code used for the script will be below
---
#!/bin/bash

#runs through 1-100 starting at 1 and adding until it reaches 100.

for ((f=1;f<=100;f++)); do

#15 is the equivalent value of 3 and 5 and this command checks whether f is divisible by 15. If this is not the case the next if statement will check for the next divisibility.

  if ! ((f%15)); then

    echo FizzBuzz $f

#this second statement challenges the current number to see if it is divisible by 3. If this is not the case it will move on.

  elif ! ((f%3)); then

    echo Fizz $f

#this third statement challenges the current number to see if it is divisible by 5. If it is not it will push it onto the final stages of the script.

  elif ! ((f%5)); then
	
    echo Buzz $f
	
  else
	
    echo $f
	
  fi

done
---

# Here is the script https://github.com/pampew10/NTS370/blob/master/FIZZBUZZ

---

+ This is the primary script and a picture of the script in VIM on my personal machine will be included below
![](https://github.com/pampew10/NTS370/blob/master/FIZZss#1.png)
![](https://github.com/pampew10/NTS370/blob/master/FIZZss#2.png)
---
