#!/bin/bash -x

#CONSTANT
IS_HEADS=1

#variables
headCount=0
tailCount=0
count=0

while [ $count -ne 10  ]
do

	bin=$((RANDOM%2))

	if [ $bin -eq $IS_HEADS ]
	then
		coin="heads"
		headCount=$(($headCount+1))
	else
		coin="tails"
		tailCount=$(($tailCount+1))
	fi

((count++))

done

echo "Heads wins : $headCount times"

echo "Tails wins : $tailCount times"
