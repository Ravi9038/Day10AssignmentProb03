#!/bin/bash -x
 
read -p "Enter the coin flip time : " flipTime

i=0
countH=0
countT=0

declare -A flipCoinDict
while [ $i -ne $flipTime ]
do
	randomTime=$(( (RANDOM%4)+1 ))
	if [ $randomTime -eq 1 ]
	then
		flipCoinDict[$i]="H"
		((countH++))

	else [ $randomTime -eq 2 ]

		flipCoinDict[$i]="T"
		((countT++))
	fi
	((i++))
done
echo Dictionary Values : ${flipCoinDict[*]}

singletHPer=`echo $countH $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
echo Percentage of H : $singletHPer %

singletTPer=`echo $countT $flipTime | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
echo Percentage of T : $singletTPer %
