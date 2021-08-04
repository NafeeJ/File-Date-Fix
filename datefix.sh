#!/system/bin/sh
tested = 0 # Counts files tested
modified = 0 # Counts files modified
for f in OGMods/OGInsta/* # Directory of files to modify. Folder/*
do
    file="$(basename $f)" # Get full name of file from its path
    filedate="$(date +%s -r $f)" # Get epoch time of file
    echo "TESTING: $f - $filedate" # Print file being tested in format "filename - current date"
    let "tested+=1" # Increment tested counter
    if [ "$filedate" -lt "1574640000" ] # If the file's date is less than Nov 25, 2019 00:00:00 (lowest possible date for a file to be correct for me), modify
    then
        # Extract YYYYMMDD from format "(name)-YYYYMMDD-XXXX.(extension)"
        date="${file#*-}"
        date="${date%%-*}"

        echo "MODIFYING: $f - $filedate" # Print file being modified in format "filename - current date"
        let "modified+=1" # Increment modified counter
        touch -a -m -t "${date}0000.00" "$f" # Modify date accessed and modified with date extracted from name
    fi
done
echo "TESTED: $tested" # Print tested
echo "MODIFIED: $modified" # Print modified