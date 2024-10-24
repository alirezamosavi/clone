# 1q1 = name
# 2q2 = txt
# 3q3 = genre
# 4q4 = bgimage

#./splsh.sh;
#./splsh_gn.sh;
#movienumbers=
#$movienumbers= ${movienumbers%"$suffix"%}
q5="$( sed "$1 q;d" movname.txt )"
q6="$( sed "$1 q;d" bgimage.txt)"
q7="$( cat $1.txt)" 
q8="$( cat $1.genre.txt)"

#sed -i -e 's/$q1/saeed/g' q1.html > q.html
trimq5=$(echo $q5 | tr -d ' ')
wget --timeout=7 -O $trimq5.jpg $q6
q9="$trimq5.jpg"

cp q2.html $trimq5.html
while IFS='' read -r a; do
    echo "${a//1q1/$q5 }"
  done <  $trimq5.html > $trimq5.html.t 
  mv $trimq5.html{.t,}


while IFS='' read -r b; do
    echo "${b//2q2/$q7 }"
  done <  $trimq5.html > $trimq5.html.t
  mv $trimq5.html{.t,}




while IFS='' read -r c; do
    echo "${c//3q3/$q8 }"
  done <  $trimq5.html > $trimq5.html.t
  mv $trimq5.html{.t,}




while IFS='' read -r d; do
    echo "${d//4q4/$q9 }"
  done <  $trimq5.html > $trimq5.html.t
  mv $trimq5.html{.t,}













#qq="
#sed -i -e "${s/1q1/q5/g}" $trimq5.html
#sed -i -e "${s/2q2/$q6/g}" $trimq5.html

#sed -i -e "${s/3q3/$q7/g}" $trimq5.html

#sed -i -e "${s/4q4/$q8/g}" $trimq5.html
#"

