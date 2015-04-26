#!/usr/bin/perl 
use 5.010;

package Maintenance;

sub FlushFile {
	print "Flushing, Output File\n";
	sleep(1);
	open( $fd , '>', 'outputfile.txt');
	print $fd "";
	close($fd);
	print "Flushing, Completed!\n";
	}

1;
