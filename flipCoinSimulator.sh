#!/bin/bash -x

bin=$((RANDOM%2))

if [ $bin -eq 1 ]
then
        coin="heads"
else
        coin="tails"
fi
echo "winner : " $coin
