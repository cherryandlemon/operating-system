#!/bin/bash
index=1
for i in "$@"
do
   if((${index} == 1));then
      index=`expr $index +  1` 
      continue
   else
     sed -i '/'"$1"'/d' $i
   fi
done
