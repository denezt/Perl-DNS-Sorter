# Perl DNS Sorter

```
1. This system will separate DNSes by Subdomain, Domain, Top level Domain.
```

**License**
```
GNU GPL v2.0, see LICENSE.
```
<div>
Date: 		04/04/15 
Created By: 	Richard L. Jackson Jr.
</div>

	1. This application is licensed under the GNU usage policy.

	2. The developer is not liable for any damages which may occur from the improper usage of the application.

	3. System Environment Linux Ubuntu.

	4. Tools Used:
		a. NANO, PICO, Gedit and Sublime (Registered).
		b. Perl Interpreter perl 5, version 18, built for x86_64-linux-gnu-thread-multi
----

## Quick Start Guide:

### Prerequisites

* Perl v5.010 or higher.
* Linux, Windows, or MAC OS.
* DNS LIST
* Perl Modules 
* tar or 7z - File Decompression tools 

### Instructions:

**Sorting DNS:**

	1. Decompress the endurance.tar archive. (tar -xvf endurance.tar)
	2. Run the 'dns_list_sorter.pl' script with the '-h' parameter.
		EXAMPLE: ./dns_list_sorter.pl -h
	3. Now, run the script again without any parameters.
		EXAMPLE: ./dns_list_sorter.pl

	4. After the script is finish the "outputfile.txt" we 
	have the TLD's, For the Subdomains sorted.

**Flushing File:**

	1. In order to flush the currently saved file simply run
	the 'dns_list_sorter.pl' using the '-f' parameter.
		EXAMPLE: ./dns_list_sorter.pl -f
	2. The script will state that the file is flushing.
	3. Lastly, the script will state that it is complete.



<table border='2'>
<tr>
	<th colspan=2>CONTACT INFO:</th>
</tr>
<tr>
	<td>EMAIL:</td><td> denezt@yahoo.com</td>
</tr>
</table>

<h5> GNU General Public License.</h5>
