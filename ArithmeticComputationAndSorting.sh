#!/bin/bash -x
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c

result1=`echo "scale=2; $a+$b*$c" | bc`
result2=`echo "scale=2; $a*$b+$c" | bc`
result3=`echo "scale=2; $c+$a/$b" | bc`
result4=`echo "scale=2; $a%$b+$c" | bc`
