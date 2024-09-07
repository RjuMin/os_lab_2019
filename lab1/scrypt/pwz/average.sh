#!/bin/bash 
sum=0
count=$#
for num in "$@"; do
sum=$(echo "$sum + $num" | bc)
done
average=$(echo "scale=2; $sum / $count" | bc)
echo "$count"
echo "$average"
