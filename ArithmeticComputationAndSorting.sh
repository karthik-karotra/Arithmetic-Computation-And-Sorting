#!/bin/bash -x
declare -A ResultDictionary
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
count=0;
result1=`echo "$a+$b*$c" | bc`
result2=`echo "$a*$b+$c" | bc`
result3=`echo "scale=2; $c+$a/$b" | bc`
result4=`echo "$a%$b+$c" | bc`

ResultDictionary[result1]=$result1
ResultDictionary[result2]=$result2
ResultDictionary[result3]=$result3
ResultDictionary[result4]=$result4

while [[ $count -ne ${#ResultDictionary[@]} ]]
do
	array[$count]=${ResultDictionary[result"$(( count+1 ))"]}
	count=$(( count+1 ))
done
echo ${array[@]}
