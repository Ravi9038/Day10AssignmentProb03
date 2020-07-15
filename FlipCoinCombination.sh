#!/bin/bash -x

echo "Flip Coin Simulation"
var=$((RANDOM%2))

if [ $var -eq 1 ]
then
	echo "Head"
else
	echo "Tail"
fi
