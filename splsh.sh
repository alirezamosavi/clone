#!/bin/bash
input="text.txt"
q=0
######################################
# $IFS removed to allow the trimming # 
#####################################
while read -r line
do
if [[ $line = *"خلاصه داستان"* ]]; then
  q=$((q+1))  
  echo "qqqqqqq"
fi
echo $line >> $q.txt
done < "$input"
