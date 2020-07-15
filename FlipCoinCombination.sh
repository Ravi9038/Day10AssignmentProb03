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


read -p "Enter the coin flip time : " flipTimeDub

i=0
countHH=0
countHT=0
countTH=0
countTT=0

declare -A flipCoinDict
while [ $i -ne $flipTimeDub ]
do
	randomTime=$(( (RANDOM%4)+1 ))
	if [ $randomTime -eq 1 ]
	then
		flipCoinDict[$i]="HH"
		((countHH++))

	elif [ $randomTime -eq 2 ]
	then
		flipCoinDict[$i]="HT"
		((countHT++))
	elif [ $randomTime -eq 3 ]
	then
		flipCoinDict[$i]="TH"
		((countTH++))
	else [ $randomTime -eq 4 ]

		flipCoinDict[$i]="TT"
		((countTT++))
	fi
	((i++))
done
echo ${flipCoinDict[*]}

dupletHHPer=`echo $countHH $flipTimeDub | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
echo Percentage of HH : $dupletHHPer %

dupletHTPer=`echo $countHT $flipTimeDub | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
echo Percentage of HT : $dupletHTPer %

dupletTHPer=`echo $countTH $flipTimeDub | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
echo Percentage of TH : $dupletTHPer %

dupletTTPer=`echo $countTT $flipTimeDub | awk -F" " '{ a=$1; b=$2; res1=(a/b*100); print res1}'`
echo Percentage of TT : $dupletTTPer %
