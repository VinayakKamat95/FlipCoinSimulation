#!/bin/bash -x

IS_HEAD=1

headCount=0
tailCount=0

function tieGame(){
   while [[ $(($headCount-$tailCount)) -lt 2 && $(($tailCount-$headCount)) -lt 2 ]]
   do
   bin=$((RANDOM%2))

   if [ $bin -eq $IS_HEAD]
   then
      coin="heads"
      headCount=$(($headCount+1))
   else
      coin="tails"
      tailCount=$(($tailCount+1))
   fi
   done
   echo $(GameResult)
}


function GameResult(){

if [ $headCount -gt $tailCount ]
then
   echo "Head wins : by $(($headCount-$tailCount))"

elif [ $headCount -lt $tailCount ]
then
   echo "Tails wins : by $(($tailCount-$headCount))"

else
   echo "Tie Game"
   echo $( tieGame )
fi

}


while [[ $headCount -lt 21 && $tailCount -lt 21 ]]
do
   bin=$((RANDOM%2))

   if [ $bin -eq 1 ]
   then
      coin="heads"
      headCount=$(($headCount+1))
   else
     coin="tails"
      tailCount=$(($tailCount+1))
   fi

done

echo "head Count:"$headCount
echo "tail count:"$tailCount

echo $(GameResult)

