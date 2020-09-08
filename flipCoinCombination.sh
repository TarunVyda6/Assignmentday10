#! /bin/bash
# welcome to flip coin combination

count=0
hCount=0
tCount=0
while(( $count<10 ))
do
	result=$(( RANDOM%2 ))
	count=$(( $count+1 ))
	if(( $result == 0 ))
	then
		hCount=$(( $hCount+1 ))
	else
		tCount=$(( $tCount+1 ))
	fi
done

declare -A combination

combination["head"]=$hCount
combination["tail"]=$tCount

hPercentage=`awk "BEGIN {print $hCount*100/$count}"`
tPercentage=`awk "BEGIN {print $tCount*100/$count}"`

echo "heads percentage is "$hPercentage
echo "tails percentage is "$tPercentage

