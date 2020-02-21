---
# UAT NTS370 Project 2.2 Perl Script
---
### Code used for the script will be below
---
#!/usr/bin/perl

#prints a prompt for the user asking for a filename

print "Enter a filename: ";

#defines the standard input from the individual to the filename variable

my $filename = <STDIN>;

#opens the file based on the previously defined filename variable.

open(FH, $filename);

#prints a message to the user involving the filename and that the contents will be printed.

print "File contents are:\n";

#using a divider to show the data below is the file information.

print "--------------\n";

#while statement with filehandle FH

while(<FH>) {

#prints the contents of each line

  print $_;

}

---

# Here is the script https://github.com/pampew10/NTS370/blob/master/perl2-2.sh

---

+ This is the primary script and a picture of the script in VIM on my personal machine will be included below
![](https://github.com/pampew10/NTS370/blob/master/Screenshot1-2-2.PNG)
![](https://github.com/pampew10/NTS370/blob/master/Screenshot2-2-2.PNG)
