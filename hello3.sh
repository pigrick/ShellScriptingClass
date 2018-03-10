#! /bin/bash

echo -e "Enter the name of the file : \c"
read file_name

#-f check if regular file
#-d check if directory
#-e check if file and directory
#-b check if blob special file
#-c check if character special file
#-s check if file is not empty
#-r -w -x check if file read/write/excutableS
if [ -f $file_name ]
then
    echo "$file_name found"
    if [ -w $file_name ]
    then
        echo "Type some text :"
        cat >> $file_name
    else
        echo "$file_name is not writable"
    fi
else
    echo "$file_name not found"
fi

