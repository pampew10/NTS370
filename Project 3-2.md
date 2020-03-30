---
# UAT NTS370 Project 3.2 Python Script
---
### Code used for the script will be below
---

#!/usr/bin/python3

#defining the arrays for future use (a and b)

a = []

b = []

#grabs user input for starting number and ending number.

input1 = input("Put your starting range number here: ")

input2 = input("Put your ending range number here: ")


#Assigns input values to integer.

test = int(input1)

test2 = int(input2)

#adds and minuses 1 to user input for calculation purposes.

minus1 = test-1

plus1 = test2+1


#Creates function under the name (gauss_addition)

def gauss_addition(list):

  #defines sum

  Sums = 0
 
  #extends the arrays from range defined from user input.
 
  a.extend(range(minus1, plus1, +1))
 
  b.extend(range(plus1, minus1, -1))


  #for loop that shows the numbers being added and adds them for visuals.
 
  for x, x2 in zip(a, b):
  
   print(x, x2)
  
   print(x+x2)
  
   #adds to sum for each rotation

   Sums += 1

  #prints sum times 50.

  print(Sums*50)

#Calls function gauss_addition.

gauss_addition(list)

---

# Here is the script https://github.com/pampew10/NTS370/blob/master/3-2script.py

---

+ This is the primary script and a picture of the script in VIM on my personal machine will be included below
![](https://github.com/pampew10/NTS370/blob/master/3-2picture1.png)
![](https://github.com/pampew10/NTS370/blob/master/3-2picture2.png)
