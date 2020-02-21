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
