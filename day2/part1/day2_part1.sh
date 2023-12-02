#!/bin/bash
BLUE=14
RED=12
GREEN=13
SUM=0


IFS=$'\n'

for i in $(cat ../input | sed s/Game\ // ); do 

  GAME=$(echo $i | cut -d ':' -f 1)
  if [[ $(echo "$i" | sed -e "s/^.*://;s/blue/\<\=$BLUE/g;s/green/\<\=$GREEN/g;s/red/\<\=$RED/g;s/,/\&\&/g;s/;/\&\&/g" | xargs | bc) == '1' ]]; then
    SUM=$(($SUM+$GAME))
  fi 
done

echo "$SUM"
