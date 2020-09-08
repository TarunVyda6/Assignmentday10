#! /bin/bash

#welcome to Arithmetic Computations and sorting

echo "please enter the input for a"
read a

echo "please enter the input for b"
read b

echo "please enter the input for c"
read c

res1=$(( $a+$b*$c ))

echo "result of "$a"+"$b"*"$c" is "$res1

res2=$(( $a*$b+$c ))
echo "result of "$a"*"$b"+"$c" is "$res2

res3=`awk "BEGIN {print $c+$a/$b }"`
echo "result of "$c"+"$a"/"$b" is "$res3

res4=$(( $a%$b+$c ))
echo "result of "$a"%"$b"+"$c" is "$res4
