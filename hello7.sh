#! /bin/bash

#read file 3 ways

while read p
do
    echo $p
done < hello7.sh
echo

cat hello7.sh | while read p
do
    echo $p
done
echo

#-r prevent backslash from interpreted
while IFS= read -r line #same with IFS=' ' read -r line
do
    echo $line
done < hello7.sh
echo

n=1
#until loops (stop when true)
until [ $n -gt 9 ]
do
    echo $n
    (( n++ ))
done

#for loops
for ((num=20; num < 40; num++))
do 
    echo $num
done
echo
for num in 10 5 33 42 1
do
    echo $num
done
echo
#last num is increment value
#this notation only work above version 4
for i in {100..110..2}
do
    echo $i
done
echo

#execute command
for command in ls pwd date
do
    echo "--------------$command----------------"
    $command
done
echo
#* get all the directory and file in the pwd
for item in *
do
    if [ -f $item ]
    then
        echo $item
    fi
done
echo

#Select loop

select name in mark james jacky alex
do
    case $name in
        mark )
            echo "Mark is a short guy." 
            break ;;
        james )
            echo "James is smart" 
            break ;;
        jacky ) 
            echo "Jacky is a hungry person" 
            break ;;
        alex )
            echo "Allex is angry" 
            break ;;
        * )
            echo "Please choose number from 1 - 4"
    esac
done
