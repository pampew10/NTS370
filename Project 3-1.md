---
# UAT NTS370 Project 3.1 Python Script
---
### Code used for the script will be below
---

#!/usr/bin/python3

from bs4 import BeautifulSoup

import json

import os

import re

from urllib.request import Request, urlopen


# Input from user.

url = input('Enter Genius song lyrics Url- ')


# Making the website believe that you are accessing it using a mozilla browser.

req = Request(url, headers = { 'User-Agent' : 'Mozilla/5.0' })

webpage = urlopen(req).read()


# uses beautifulsoup to extract html from the page.

soup = BeautifulSoup(webpage, 'html.parser')

html = soup.prettify('utf-8')

song_1 = {}

song_1["Lyrics"] = [];


# Extract the Lyrics of the song.

for div in soup.findAll('div', attrs = {'class': 'lyrics'}):

  song_1["Lyrics"].append(div.text.strip().split("\n"));  
  

# print the extracted lyrics of the song.

print(song_1)



---

# Here is the script https://github.com/pampew10/NTS370/blob/master/pythonlyrics.sh

---

+ This is the primary script and a picture of the script in VIM on my personal machine will be included below
![](https://github.com/pampew10/NTS370/blob/master/Screenshot_20200319_124823.png)
![](https://github.com/pampew10/NTS370/blob/master/Screenshot_20200319_124843.png)
