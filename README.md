# File-Date-Fix
Script to change date modified/accessed of file(s) to their real date contained in the name of the file. 

My solution goes through a directory of files with the format "(name)-YYYYMMDD-XXXX.(extension)" and first tests to see if the raw YYYYMMDD is equal to the incorrect date for my case and then goes and extracts the real date from the file name and then modifies the date modified and accessed metadata to that date. 

To generalize this someone would have to change the directory, the incorrect date to test the file against (or remove the if statement altogether), method of extracting the date from file name with parameter expansion or anything else, and the Shebang at the top for bash location

The Shebang at the top is specific to Android (which is what I used this for). I think this should just work on Linux and MacOS but to run on Windows I used the Git Bash command line software.

If anyone wants to use this for images taken with a camera, the files *might* also have a wrong date in their EXIF metadata (maybe, maybe not), in which case I suggest using [one of these solutions](https://photo.stackexchange.com/questions/2973/is-there-any-software-which-will-set-the-exif-dates-based-on-the-files-modifica/7960#7960) which use either exiftool or jhead

I don't take any responsibility or liability for anyone who uses this

References: \
https://stackoverflow.com/questions/10618015/bash-parse-filename \
https://www.thegeekstuff.com/2012/11/linux-touch-command/ \
https://www.programmersought.com/article/9674909554/ \
https://stackoverflow.com/questions/4277665/how-do-i-compare-two-string-variables-in-an-if-statement-in-bash \
https://www.unix.com/shell-programming-and-scripting/66928-extract-last-modified-time-file-form-yyyymmdd.html
