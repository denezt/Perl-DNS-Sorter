#!/usr/bin/perl
use 5.010;
package HelpMenu;

sub help_menu {
	print "DNS Organizer: \n";
	print "\tHelp Menu:\t[ -h, --h, -help, --help]\n";
	print "\tVerbosity:\t[ -v, -verbose ]\n";
	print "\tFlush File:\t[ -f, --f, -flush, --flush ]\n";
	print "\tDebugger:\t[ -vv ]\n";
	}

sub version {
	print "Version v1.0\n"; 
	}

sub info {
	print "Created by:\tRichard L. Jackson Jr.\n";
	version();

	}



return 1;
