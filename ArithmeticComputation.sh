#! /bin/bash

#welcome to Arithmetic Computations and sorting

echo "please enter the input for a"
read a

echo "please enter the input for b"
read b

echo "please enter the input for c"
read c

declare -A results

res1=$(( $a+$b*$c ))
results[1]=$res1
res2=$(( $a*$b+$c ))
results[2]=$res2
res3=`awk "BEGIN {print $c+$a/$b }"`
results[3]=$res3
res4=$(( $a%$b+$c ))
results[4]=$res4

declare -a arrayResults

arrayResults[0]=${results[1]}
arrayResults[1]=${results[2]}
arrayResults[2]=${results[3]}


IFS=$'\n' sorted=($(sort -r <<<"${arrayResults[*]}"))
unset IFS
printf "%s " "${sorted[@]}"


