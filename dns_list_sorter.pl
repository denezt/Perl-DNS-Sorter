#!/usr/bin/perl
########################
#Sort DNS Names
########################

use v5.010;

#Include "Current Directory Files"
use lib ($ENV{PWD});
use Data::Dumper qw(Dumper);

#Add User-Defined Modules
use UniquePique;
use HelpMenu;
use Maintenance;

my $x;
my @y;
my %z;

my @options;
#Count parameters
if ( (scalar @ARGV) > 0 ){
	$options[0] = $ARGV[0];
} else {
	$options = 0;
}

#Get Verbosity Level
if ( $options[0] eq "-v" || $options[0] eq "-verbose" ){
	print "Verbose: [ Level 1 ]\n";
	$verbosity = 1;
} elsif ( $options[0] eq "-vv" ){
	print "Verbose: [ Level 2 ]\n";
	$verbosity = 2;
} elsif ( $options[0] eq "-h" || $options[0] eq "-help" || $options[0] eq "--help" || $options[0] eq "--h" ) {
	HelpMenu::help_menu();
	exit;
} elsif ( $options[0] eq "-f" || $options[0] eq "-flush" || $options[0] eq "--flush" || $options[0] eq "--f" ){
	Maintenance::FlushFile();	
	exit;
} else {
	$verbosity = 0;    	
}

#Initialize - Variables
my $true=1;
my $filename="output.list";
my $tld_list="dns_list";
my @file;
my @dnsList;

#Comparing variables
our @a;
our @b;
our $c;

#Check if created
my $permit=0700;
if  ( -f $filename  ){
	chmod $permit, $filename ;
	}
	
 
# use perl open function to open the file (or die trying)
open( $file, '<', $tld_list) or die "Could not read from $filename, program halting.";
open( $fh ,'>', 'systemfile.log');
open( $fd , '>>' , 'outputfile.txt'); 

sub logger {
	open($STDTO, ' >&', STDOUT);
	# redirect STDOUT to log.txt
	open (STDOUT, '>>', 'log.txt');
	}

#Loop through the file with a perl while loop, 
#stopping when you get to the desired record
$count = 0;

while ( my $rows = <$file> ){
	chomp $rows;
	#print "$rows\n";
	$dnsList[$count] = $rows;
	#  = $rows =~ /(\.[^.]+)$/;
	$count++;
	}

#Full DNS
my @dns_line;

#Subdomain list
our @sdList;

#Step thru Subdomain Array
our $chk = 0;

$found = $#dnsList + 1; 
print "Total Found, [". $found."]\n";
print "Executing, Actions...\n";
#Iterate through the list
for ( $incr = 0; $incr < ($#dnsList + 1 ); $incr++) 
{  
	#Log Separator
	##if ( $options[0] eq "-v" || $options[0] eq "-verbose" ){
	if ( $verbosity > 1 ){

		print "+------------------------+\n";
	}
	@dnsSector = split(/\./, $dnsList[$incr]); 
	#Increase Array
	my $add=0;
	#Iterate through the DNS - Verbose	
	##if ( $options[0] eq "-v" || $options[0] eq "-verbose" ){
	if ( $verbosity > 1 ){

		for ( $_sector = 0; $_sector < ($#dnsSector + 1 ); $_sector++)
		{
			print "[$add]: [". $dnsSector[ $add ]."]\n";
			$add++;	
		}		
		print "DNS has: [", ( $#dnsSector + 1 ) , "] Sector(s).\n";	
	}
	
	
	#Show Domain - Before Storing
	foreach $_sd ($dnsSector[0]){
		#Debugging - Verbosity
		##if ( $options[0] eq "-v" || $options[0] eq "-verbose" ){
		if ( $verbosity > 1 ){

			print "Storing, ". $_sd." as Subdomain!\n";
		}
		#Store for uniqity main
		$a[$right++] = $_sd;
		
	}
	##if ( $options[0] eq "-v" || $options[0] eq "-verbose" ){
	if ( $verbosity > 1 ){
		print "+~~~~~~~~~~~~~~~~~~~~~~~~+\n";
	}
}

our @all; 
#Call Uniqity function
@all = UniquePique::unique( @a );

if ( $verbosity > 1 ){
	say Dumper \@all;
	}

my $f=0;
for ( $_sublist=0; $_sublist < $#all; $_sublist++ ){
	for ( $final=0; $final < ( $#dnsList + 1 ); $final++ ){
		@dnsSector = split(/\./, $dnsList[$final]); 
		#print $dnsSector[0], "<>", $all[$_sublist],  "\n";
		if ( $dnsSector[0] eq $all[$_sublist] ) {
			if ( $verbosity > 0 ){
				print "[ $f ]", $all[$_sublist] , "\n";
			}
			$finalizer[$final] = join(".", $dnsSector[0],$dnsSector[1],$dnsSector[2],$dnsSector[3]);  
		}	
	}
	$f++;

}

@info = sort(@finalizer);	
#Save to File
for ( my $line_item=0; $line_item < $#info; $line_item++ ){
	if ( $info[$line_item] ne /\w/ ){
		print $fd  $info[$line_item] , "\n" ;
	} else {
		print $fh "[ERROR]: System found null char while sorting!\n";
	}
	sleep(0.5); print "\.";

}

if ( $verbosity > 1 ){
	say Dumper \@info;
	}

#Counts Subdomain Array

print $total . "\n" ;
#Arguments Entered
#print "Arguments: ", $options[0] , "\n";

#Close file handler	
close($file);
close($STDTO);
close($STDOUT);
close($fh);
close($fd);


1;
