#! /bin/bash

#Array
os=('ubuntu' 'windows' 'macos')
os[3]='Linux'
#Print All
echo "${os[@]}"
echo "${os[2]}"
#print index
echo "${!os[@]}"
#print length of array
echo "${#os[@]}"

#remove value
unset os[2]
echo "${os[@]}"
echo "${!os[@]}"

string=applepie
#whole value store in string[0]
echo "${string[0]}"

#while loop
num=10
while [ $num -lt 20  ]
do
    echo "$num"
    #num=$((num+1))
    ((num++))
done

#sleep
n=1
while [ $n -lt 4 ]
do
    echo "$n"
    sleep 1
    #gnome-terminal &
    (( n++ ))
done

#open terminal
gnome-terminal &