#! /bin/bash
# welcome to flip coin combination

count=0
count1=0
count2=0
hCount=0
tCount=0
hhCount=0
htCount=0
thCount=0
ttCount=0
hhhCount=0
tttCount=0
hhtCount=0
httCount=0
tthCount=0
thhCount=0
thtCount=0
hthCount=0

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



while(( $count2<10 ))
do
        result3=$(( RANDOM%2 ))
        result4=$(( RANDOM%2 ))
	result5=$(( RANDOM%2 ))
        count2=$(( $count2+1 ))
        if(( $result3 == 0 && $result4 == 0 && $result5 == 0 ))
        then
                hhhCount=$(( $hhhCount+1 ))
        elif(( $result3 == 1 && $result4 == 1 && $result5 == 1 ))
        then
                tttCount=$(( $hhtCount+1 ))
        elif(( $result3 == 0 && $result4 == 0 && $result5 == 1 ))
        then
                hhtCount=$(( $hhtCount+1 ))
        elif(( $result3 == 0 && $result4 == 1 && $result5 == 1 ))
        then
                httCount=$(( $httCount+1 ))
	elif(( $result3 == 1 && $result4 == 1 && $result5 == 0 ))
        then
                tthCount=$(( $tthCount+1 ))
	elif(( $result3 == 1 && $result4 == 0 && $result5 == 0 ))
        then
                thhCount=$(( $thhCount+1 ))
	elif(( $result3 == 1 && $result4 == 0 && $result5 == 1 ))
        then
                thtCount=$(( $thtCount+1 ))
	elif(( $result3 == 0 && $result4 == 1 && $result5 == 0 ))
        then
                hthCount=$(( $hthCount+1 ))
        fi
done

declare -A combination

combination["head"]=$hCount
combination["tail"]=$tCount

hPercentage=`awk "BEGIN {print $hCount*100/$count}"`
tPercentage=`awk "BEGIN {print $tCount*100/$count}"`



declare -A DoubletCombination

DoubletCombination["headhead"]=$hhCount
DoubletCombination["tailtail"]=$ttCount
DoubletCombination["tailhead"]=$thCount
DoubletCombination["headtail"]=$htCount

hhPercentage=`awk "BEGIN {print $hhCount*100/$count1}"`
htPercentage=`awk "BEGIN {print $htCount*100/$count1}"`
ttPercentage=`awk "BEGIN {print $ttCount*100/$count1}"`
thPercentage=`awk "BEGIN {print $thCount*100/$count1}"`


declare -A TripletCombination

TripetCombination["hhh"]=$hhhCount
TripletCombination["ttt"]=$tttCount
TripetCombination["hht"]=$hhtCount
TripletCombination["htt"]=$httCount
TripetCombination["tth"]=$tthCount
TripletCombination["thh"]=$thhCount
TripetCombination["tht"]=$thtCount
TripletCombination["hth"]=$hthCount



hhhPercentage=`awk "BEGIN {print $hhhCount*100/$count2}"`
tttPercentage=`awk "BEGIN {print $tttCount*100/$count2}"`
hhtPercentage=`awk "BEGIN {print $hhtCount*100/$count2}"`
httPercentage=`awk "BEGIN {print $httCount*100/$count2}"`
tthPercentage=`awk "BEGIN {print $tthCount*100/$count2}"`
thhPercentage=`awk "BEGIN {print $thhCount*100/$count2}"`
thtPercentage=`awk "BEGIN {print $thtCount*100/$count2}"`
hthPercentage=`awk "BEGIN {print $hthCount*100/$count2}"`

echo "hhh percentage is "$hhhPercentage
echo "ttt percentage is "$tttPercentage
echo "hht percentage is "$hhtPercentage
echo "htt percentage is "$httPercentage
echo "tth percentage is "$tthPercentage
echo "thh percentage is "$thhPercentage
echo "tht percentage is "$thtPercentage
echo "hth percentage is "$hthPercentage




