#! /bin/bash

# AND
age=10
if [ "$age" -gt 25 ] && [ "$age" -lt 40 ]
# [[ "$age" -gt 25 && "$age" -lt 40]]
# [ "$age" -gt 25 -a "$age" -lt 40]
then
    echo "age is greater than 25 and less than 40"
else
    echo "age not valid"
fi

# OR
age2=50
if [ "$age2" -eq 10 -o "$age2" -eq 20 -o "$age2" -eq 30 ] || [ "$age2" -eq 40 ] || (($age2 == 50))
then
    echo "age2 is equal 10/20/30/40/50"
else
    echo "age2 is not valid"
fi

#perform arithmetic
echo "arithmetic"
echo $(((1+1)*5))
echo $((10 % 7))
num1=10
num2=20
echo $((num1 + num2))

echo $(expr $num1 - $num2)
# * need escape for expr
echo $(expr $num2 \* $num1)

#floating-point number
#man bc
echo "Floating point"
echo "(2.4+2.4)*2" | bc
echo "scale=5;10/3.3" | bc 
num3=3.3
num4=2.2
echo "$num3-$num4" | bc
#using matlib with -l or --mathlib
num5=9
echo "scale=5;sqrt($num5)" | bc -l
echo "scale=0;3^3" | bc -l