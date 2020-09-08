#! /bin/bash
#welcome to the flip coin simulation


result=$(( RANDOM%2 ))

if(( $result == 0 ))
then
	echo "result is heads"
else
	echo "result is tails"
fi
