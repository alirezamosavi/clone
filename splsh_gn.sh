#!/bin/bash
input="genre.txt"
q=0
######################################
# $IFS removed to allow the trimming #
#####################################
while read -r line
do
if [[ $line = *"ا"* ]] || [[ $line  = *"ب"* ]] ||  [[ $line = *"پ"* ]] || [[ $line  = *"ت"* ]] ||  [[ $line = *"ث"* ]] || [[ $line  = *"ج"* ]]  || [[ $line  = *"چ"* ]] || [[ $line  = *"ح"* ]] || [[ $line  = *"خ"* ]]  || [[ $line = *"د"* ]] ||   [[ $line = *"ذ"* ]] ||  [[ $line = *"ر"* ]]  ||  [[ $line = *"ز"* ]]   ||  [[ $line = *"ژ"* ]] ||  [[ $line = *"س"* ]] ||  [[ $line = *"ش"* ]] ||   [[ $line = *"ص"* ]] ||    [[ $line = *"ض"* ]] ||   [[ $line = *"ط"* ]] ||   [[ $line = *"ظ"* ]] ||   [[ $line = *"ع"* ]] ||    [[ $line = *"غ"* ]] ||    [[ $line = *"ف"* ]] ||    [[ $line = *"ق"* ]] ||  [[ $line = *"ک"* ]] ||  [[ $line = *"گ"* ]] ||   [[ $line = *"ل"* ]] ||  [[ $line = *"م"* ]] ||  [[ $line = *"ن"* ]] ||  [[ $line = *"و"* ]] || [[ $line = *"ه"* ]] || [[ $line = *"ی"* ]];then
  echo $line >> $q.genre.txt  
  q=$((q+1))
  echo "qqqqqqq"
fi
done < "$input"

