---
# UAT NTS370 Project 1.2 Parsing
---
### Code used for the script will be below
---
#!/bin/bash

#awk command grabs information and funnels into new output file "scriptoutput"
awk -F : '{print $1,$6,$7}' /etc/passwd > /home/pampew/Desktop/scriptoutput

#sort command sorts data and rewrites the current scriptoutput file with new sorted data.
sort -o scriptoutput scriptoutput

#cat shows the information in the final scriptoutput file product for the user to see.
cat scriptoutput

---

+ This is the primary script and a picture of the script in VIM on my personal machine will be included below
![](https://github.com/pampew10/NTS370/blob/master/Screenshotforclass.png)
---
