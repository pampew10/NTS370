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
