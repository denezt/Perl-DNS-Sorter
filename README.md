# DNS Sorter
============================


```
1. This system will separate DNSes by Subdomain, Domain, Top level Domain.
```




**License**
```
GNU GPL v2.0, see LICENSE.
```
##############################################
Date: 		04/04/15 
Created By: 	Richard L. Jackson Jr.
##############################################

1) This application is licensed under 
the GNU usage policy.

2) The developer is not liable for any
damages which may occur from the 
improper usage of the application.

3) System Environment Linux Ubuntu.

4) Tools Used:
	a. NANO, PICO, Gedit and 
	Sublime (Registered).
	b. Perl Interpreter perl 5, version 18, 
	built for x86_64-linux-gnu-thread-multi

##############################################

Quick Start Guide:

>>>	Prerequisites
    	* Perl v5.010 or higher.
	* Linux, Windows, or MAC OS.
	* DNS LIST
	* Perl Modules 
	* tar or 7z - File Decompression tools 

Instructions:

Sorting DNS:	
	1. Decompress the endurance.tar archive. (tar -xvf endurance.tar)
	2. Run the 'dns_list_sorter.pl' script with the '-h' parameter.
		EXAMPLE: ./dns_list_sorter.pl -h
	3. Now, run the script again without any parameters.
		EXAMPLE: ./dns_list_sorter.pl

	4. After the script is finish the "outputfile.txt" we 
	have the TLD's, For the Subdomains sorted.

Flushing File:	

	1. In order to flush the currently saved file simply run
	the 'dns_list_sorter.pl' using the '-f' parameter.
		EXAMPLE: ./dns_list_sorter.pl -f
	2. The script will state that the file is flushing.
	3. Lastly, the script will state that it is complete.




CONTACT INFO:
> EMAIL: denezt@yahoo.com
> PH: 832.670.9769





=============================================
SYSTEM BUILD INFO:
=============================================
Linux 3.13.0-48-generic 
#80-Ubuntu SMP Thu Mar 12 11:16:15 
UTC 2015 x86_64 x86_64 x86_64 GNU/Linux
=============================================

GNU General Public License.
