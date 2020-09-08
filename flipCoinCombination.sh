#! /bin/bash
# welcome to flip coin combination

count=0
count1=0
hCount=0
tCount=0
hhCount=0
htCount=0
thCount=0
ttCount=0
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


while(( $count1<10 ))
do
        result1=$(( RANDOM%2 ))
	result2=$(( RANDOM%2 ))
        count1=$(( $count1+1 ))
        if(( $result1 == 0 && $result2 == 0 ))
        then
                hhCount=$(( $hhCount+1 ))
        elif(( $result1 == 0 && $result2 == 1 ))
	then
                htCount=$(( $htCount+1 ))
	elif(( $result1 == 1 && $result2 == 0 ))
	then
                thCount=$(( $thCount+1 ))
	elif(( $result1 == 1 && $result2 == 1 ))
	then
                ttCount=$(( $ttCount+1 ))
        fi
done

declare -A DoubletCombination

DoubletCombination["headhead"]=$hhCount
DoubletCombination["tailtail"]=$ttCount
DoubletCombination["tailhead"]=$thCount
DoubletCombination["headtail"]=$htCount

hhPercentage=`awk "BEGIN {print $hhCount*100/$count1}"`
htPercentage=`awk "BEGIN {print $htCount*100/$count1}"`
ttPercentage=`awk "BEGIN {print $ttCount*100/$count1}"`
thPercentage=`awk "BEGIN {print $thCount*100/$count1}"`


echo "heads and heads percentage is "$hhPercentage
echo "heads and tails percentage is "$htPercentage
echo "tails and heads percentage is "$thPercentage
echo "tails and tails percentage is "$ttPercentage
