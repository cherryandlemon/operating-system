#!/bin/bash
end=$3
end=$((end+1))
sed   -n "${2},${3}p;${end}q" ${1}


