#! /bin/bash
# welcome to flip coin combination

result=$(( RANDOM%2 ))

if(( $result==0 ))
then
	echo "heads has won"
else
	echo "tails has won"
fi


