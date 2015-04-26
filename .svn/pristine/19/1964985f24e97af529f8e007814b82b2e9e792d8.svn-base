#!/usr/bin/perl
use v5.010;

package UniquePique;

use List::MoreUtils qw(uniq);
use Data::Dumper qw(Dumper);

#Storing
my @uniqa;
my @uniqb;
my @uniqc;
my @uniqd;
our @arry;
my $verbosity;
our @library;

sub unique {
	#Pass Arguments
	my @uniqa =  @_;
	
	#Limit Checks
	my $LIMIT = $#uniqa;

	#Execute Check
	for ($i=0; $i < $LIMIT; $i++ )
	{
		$arry[$i] = $uniqa[$i];	
	}
	
	@library = uniq @arry;
	@uniqc = sort(@library);
	
	if ( 1 == 0 ){ 
		say Dumper \@library;
	}

	for ($r=0; $r < ($#uniqc + 1) ; $r++) {
		#print $uniqc[$r] , "\n";
	}
	return @uniqc;
}


1;
#@a = ( "dev", "www", "mail", "www" );

