printf "%15s" "word in"
printf "  "
printf "%-15s" $1
for(( i=2;i<=$#;i++))
do
  eval b=\$$i
  printf "%-15s" $b
done
printf "\n"
for x in `cat $1|sed -e 's/[_,\.\n\r:;!={}+()-]/ /g'|awk   'BEGIN{FS=" "}{for(i=1;i<=NF;i++)array[$i]++}END{for(i in array){printf i;printf " "}}'`;do
   printf "%-15s" "----"
  printf "%-15s" $x
  printf "  "
  for(( i=2;i<=$#;i++))
  do
   eval b=\$$i
   e=`grep "$x" "$b"|wc -l`
   printf "%-15s" $e
  done
  printf "\n"
done
