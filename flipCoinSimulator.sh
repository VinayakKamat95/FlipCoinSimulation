#!/bin/bash -x
IS_HEAD=1

headCount=0;
tailCount=0;

while [ 1 ]
do
   bin=$((RANDOM%2));

   if [ $bin -eq $IS_HEAD ];
   then
      coin="heads";
      headCount=$(($headCount+1));
   else
      coin="tails";
      tailCount=$(($tailCount+1));
   fi

   if [[ $headCount -eq 21 || $tailCount -eq 21 ]];
   then
      break;
   fi

done

echo "head Count:"$headCount;
echo "tail count:"$tailCount;

if [ $headCount -gt $tailCount ];
then
   echo "Head wins : by $(($headCount-$tailCount))";

elif [ $headCount -lt $tailCount ];
then
   echo "Tails wins : by $(($tailCount-$headCount))";

else

   echo "Tie";

fi

