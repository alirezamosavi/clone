#!/bin/bash
for i in {2020..1936}
do
   cp removepersion.sh $i;
   cp clone.sh $i;
   cp splsh_gn.sh $i;
   cp splsh.sh $i;
   cp run.sh $i;
   cp q2.html $i;
   cp radefarme333.png $i;
   ./$i/run.sh;
done
