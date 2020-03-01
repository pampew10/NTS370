#!/usr/bin/perl

#function for grabbing input file
sub FILEINPUT {
	#prints a prompt for the user for needed information.
	print "Enter Filename to be copied!: ";
	#Grabs standard input for the variable inputfile
	$inputfile = <STDIN> ;
	#chomps the current input file name previously obtained.
	chomp $inputfile;
	#checks if the file exists
	if (-e $inputfile && -r $inputfile) {
		#if the file exists prints a prompt for the user to know it exists
		print "$inputfile exists!\n"
	#otherwise if the file does not exist perform the next action.
	} else {
		#prints that the file does not exist.
		print "$inputfile does not exist!\n";
	}
	#Opens the file based on the previous inputfile.
	open (INPUT,"$inputfile");
}

#function for grabbing output file.
sub FILEOUTPUT {
	#prints a prompt for the user requesting the name of the output file.
	print "Enter OUTPUT filename: ";
	#Requests input from the user to obtain the filename being requested.
	$outputfile = <> ;
	#chomps the filename previously requested from the user.
	chomp $outputfile;
	#checks if the file exists.
	if (-e $outputfile && -w $outputfile) {
		#if the file exists a prompt is sent to the user that it does indeed exist.
		print "$outputfile exists!\n";
	#otherwise it will perform the prompt listed below.
	} else {
		print "$outputfile does not exist!\n";
	}
	#opens the file from the output file retrieved at the beginning.
	open (OUTPUT,">>$outputfile");
}

#This is the home function performing the last task of the script.
sub HOME {
	#while the input is being retrieved
	while (<INPUT>) {
		#export the home directory.
		s/home/export\/home/;
		#print the output of the last matched expression.
		print OUTPUT $_;
	}
}

#performs all 3 previously defined functions.

FILEINPUT();

FILEOUTPUT();

HOME();
