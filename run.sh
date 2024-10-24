./removepersion.sh;
./splsh_gn.sh;
./splsh.sh;
q=$( wc -l < movname.txt)
for (( c=1; c<=$q; c++ ))
do 
   ./clone.sh $c
done
