# File-Date-Fix
Script to change date modified/accessed of file(s) to their real date contained in the name of the file. 

My solution goes through a directory of files with the format "(name)-YYYYMMDD-XXXX.(extension)" and first tests to see if the raw YYYYMMDD is equal to the incorrect date for my case and then goes and extracts the real date from the file name and then modifies the date modified and accessed metadata to that date. 

To generalize this someone would have to change the directory, the incorrect date to test the file against (or remove the if statement altogether), method of extracting the date from file name with parameter expansion or anything else, and the Shebang at the top for bash location

The Shebang at the top is specific to Android (which is what I used this for). I think this should just work on Linux and MacOS but to run on Windows I used the Git Bash command line software.
