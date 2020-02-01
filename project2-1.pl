#!/urs/bin/perl
#Asks the user what word they want
print "Enter a word: ";
#defines whatever word input by the user to $test1
$test1 = <STDIN>;
#Chops the end off of the word the user gave
chop($test1);
#Prints the previously chopped version of the word.
print "$test1\n";
#repeat
chop($test1);
#repeat.
print "$test1\n";
chop($test1);
print "$test1\n";
chop($test1);
print "$test1\n";
chop($test1);
print "$test1\n";
