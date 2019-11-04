#!/bin/bash
index=0
bol=0
for x in `ls -l`;do
index=`expr $index + 1 `
if(( ${index} == 1 || ${index} == 2 ))
  then
   continue
elif [ $(($index%9)) -eq 3 ] && [ ${x} == "-rwxrwxrwx" ]
   then
     bol=1
elif(( ${index}%9 == 2 && bol == 1 ))
   then
     echo ${x}
     bol=0
fi
done 
exit 0
