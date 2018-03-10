#! /bin/bash
# this is a comment
echo "Hello word" # this is  also a comment

echo Our shell name is $BASH
echo Our shell version name is $BASH_VERSION
echo Our home directory is $HOME
echo Our curent working directory is $PWD

name=MArk
val10=10
echo The name is $name
echo value $val10

<<names
echo "Enter names : "
read name1 name2 name3
echo "Entered names : $name1, $name2, $name3"
names

<<readinput
read -p 'username : ' user_var
read -sp 'password : ' password_var
echo
echo "username is $user_var"
echo "password is $password_var"
readinput

<<readarray
echo "Enter names: "
read -a names
echo "Names : "
echo "${names[0]}, ${names[1]}"
for nam in "${names[@]}"
do
    echo "$nam"
done
readarray

echo "Enter name : "
read
echo "Name : $REPLY"