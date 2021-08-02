#!/system/bin/sh
tested = 0 # Counts files tested
modified = 0 # Counts files modified
for f in OGMods/OGInsta/* # Directory of files to modify. Folder/*
do
    file="$(basename $f)" # Get full name of file from its path
    filedate=$(stat -c '%y' $f | cut -d ' ' -f1 | sed -e 's/-//g') # Get YYYYMMDD from current file date
    echo "TESTING: $f - $filedate" # Print file being tested in format "filename - current date"
    let "tested+=1" # Increment tested counter
    if [[ "$filedate" == "20191124" ]] # If the current file date is equal to a date (incorrect in this case), then modify
    then
        # Extract YYYYMMDD and id from format "(name)-YYYYMMDD-XXXX.(extension)"
        date="${file#*-}"
        date="${date%%-*}"
        id="${file##*-}"
        id="${id%%.*}"

        echo "MODIFYING: $f - $filedate" # Print file being modified in format "filename - current date"
        let "modified+=1" # Increment modified counter
        touch -a -m -t "${date}${id}.00" "$f" # Modify date accessed and modified with date extracted from name
    fi
done
echo "TESTED: $tested" # Print tested
echo "MODIFIED: $modified" # Print modified