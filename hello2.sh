#! /bin/bash

# USE ''  for escaping var $
# $0 = command
echo $0 $1 $2 $3 ' > ECHO $1 $2 $3'

args=("$@")
for var in ${args[@]} 
do
    echo "$var"
    echo "-"
done
echo ------
echo $@

echo size of arguement is = $# 

#if statement
count=9
if [ $count -eq 10 ] #-ne -gt -ge -lt -le
then
    echo "condition is true"
else
    echo "condition is false"
fi
if (($count <= 10)) #< <= >= >
then
    echo "second condition is true"
fi

word="hello"
if [ "hello" = "$word" ] #== !=  -z -n [[>]] [[<]]
then
    echo "word is hello"
fi

letter=d
if [[ $letter < "s" ]]
then
    echo earlier
elif [[ $letter > "s" ]]
then
    echo later
else
    echo same
fi


