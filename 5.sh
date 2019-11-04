#!/bin/bash

while true
do
    read -p "please input a number to find  factorial : " n
    if (($n <= 0))
    then
        echo "input number must greater than 0!please input again!"
        continue 
    fi
    sum=1
    for i in `seq 1 $n` 
    do
        sum=$((sum*i))
    done
    echo "${n}! = $sum" 
done
