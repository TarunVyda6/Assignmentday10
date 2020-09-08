#! /bin/bash
#welcome to the flip coin simulation

count=10
headsCount=0
tailsCount2=0
while(( $count>0 ))
do
	count=$(( count-1 ))
	result=$(( RANDOM%2 ))

	if(( $result == 0 ))
	then
		headsCount=$(( $headsCount+1 ))
	else
		tailsCount=$(( $tailsCount+1 ))
	fi
done

echo "heads count is : "$headsCount
echo "tails count is : "$tailsCount

