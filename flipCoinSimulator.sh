#! /bin/bash
#welcome to the flip coin simulation

count=10
headsCount=0
tailsCount=0

	while(( $headsCount<21 && $tailsCount<21 ))
	do
		result=$(( RANDOM%2 ))

		if(( $result == 0 ))
		then
			headsCount=$(( $headsCount+1 ))
		else
			tailsCount=$(( $tailsCount+1 ))
		fi
	done


if(( $headsCount>$tailsCount ))
then
	finalResult=$(( $headsCount-$tailsCount ))
	echo "heads has won and won by : "$finalResult
elif(( $tailsCount>$headsCount ))
then
	finalResult=$(( $tailsCount-$headsCount ))
	echo "tails has won and won by : "$finalResult
else

	while [ $(( $headCount-$tailCount ))!=2 && $(( $tailCount-$headCount ))!=2 ]
	do
		result=$(( RANDOM%2 ))

                if(( $result == 0 ))
                then
                        headsCount=$(( $headsCount+1 ))
                else
                        tailsCount=$(( $tailsCount+1 ))
                fi
        done

	if(( $headsCount>$tailsCount ))
		then
	        finalResult=$(( $headsCount-$tailsCount ))
        	echo "heads has won and won by : "$finalResult
	elif(( $tailsCount>$headsCount ))
	then
        	finalResult=$(( $tailsCount-$headsCount ))
	        echo "tails has won and won by : "$finalResult
	fi
fi
