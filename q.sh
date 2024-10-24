#!/bin/bash
for i in {2023..1936}
do
  cat $i/movname.txt >> fullmovie.txt
done
