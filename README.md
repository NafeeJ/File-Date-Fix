# File-Date-Fix
Script to change date modified/accessed of file(s) to their real date contained in the name of the file. 

Issue: I copied a lot of files to another drive which reset their timestamps to the date at which I did that. The real date was luckily stored in the file name so this just sets the metadata to whats in the file name.

My solution goes through a directory of files with the format "(name)-YYYYMMDD-XXXX.(extension)" and first tests to see if file epoch is less than the earliest correct date possible for my case and then goes and extracts the real date from the file name and then modifies the date modified and accessed metadata to that date. 

To generalize this someone would have to change the directory, the earliest correct date to test the file against (or remove the if statement altogether), method of extracting the date from file name with parameter expansion or anything else, and the Shebang at the top for shell location

The Shebang at the top is specific to Android (which is what I used this for). I think this should just work on Linux and MacOS but to run on Windows I used the Git Bash command line software.

If anyone wants to use this for images taken with a camera, the files *might* also have a wrong date in their EXIF metadata (maybe, maybe not), in which case I suggest using [one of these solutions](https://photo.stackexchange.com/questions/2973/is-there-any-software-which-will-set-the-exif-dates-based-on-the-files-modifica/7960#7960) which use either exiftool or jhead

References: \
https://stackoverflow.com/questions/10618015/bash-parse-filename \
https://www.thegeekstuff.com/2012/11/linux-touch-command/ \
https://www.programmersought.com/article/9674909554/ \
https://stackoverflow.com/questions/4277665/how-do-i-compare-two-string-variables-in-an-if-statement-in-bash \
https://www.unix.com/shell-programming-and-scripting/66928-extract-last-modified-time-file-form-yyyymmdd.html
