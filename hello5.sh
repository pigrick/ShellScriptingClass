#! /bin/bash


num=4
case $num in
    3 )
        echo "Num is 3" ;;
    5 )
        echo "Num is 5" ;;
    * )
        echo "This num is $num" ;;
esac

word=$1
case $word in
    "" )
        echo "No argument" ;;
    "car" )
        echo "Nice car" ;;
    "bus" )
        echo "Big Bus" ;;
    * )
        echo "I dont like you $word" ;;
esac

echo -e "Enter some character : \c"
read val

case $val in
    [a-z] )
        echo "Character in lower case" ;;
    #LANG=C
    [A-Z] )
        echo "Character in Upper Case" ;;
    [0-9] )
        echo "Character in Number" ;;
    ? )
        echo "Special Character" ;;
    * )
        echo "more than 1 character" ;;
esac