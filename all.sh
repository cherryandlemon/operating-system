#!/bin/bash
cat poem.txt
echo "命令1："
./1.sh poem.txt 1 2
echo "命令1"
echo "------------------------------------------"
cat poem.txt
echo "命令2"
./2.sh reentrant  poem.txt
echo "命令2" 
cat poem.txt
echo "------------------------------------------"
ls -l
echo "命令3" 
./3.sh
echo "命令3"
echo "------------------------------------------"
echo "命令4"
./4.sh poem.txt poem0.txt  poem1.txt poem2.txt
echo "命令4"
echo "------------------------------------------"
echo "命令5"
./5.sh
echo "命令5"
