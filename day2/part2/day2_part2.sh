#!/bin/bash
SUM=0

IFS=$'\n'

for i in $(cat ../input | sed s/Game\ // ); do 
  MUL=$(echo "$i" | sed 's/^.*://' | tr ',' '\n' | tr ';' '\n' |  sort -nr | sort -u -k2 | sed 's/^ *//g' | cut -d ' ' -f 1 | tr '\n' '*' | sed 's/\*$//' | xargs | bc )
  SUM=$(($SUM+$MUL))
done

echo "$SUM"
