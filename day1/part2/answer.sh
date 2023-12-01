#!/bin/bash
#
sed 's/one/oEe/g;s/two/tWo/g;s/three/tHree/g;s/four/fOur/g;s/five/fIve/g;s/six/sXx/g;s/seven/seVen/g;s/eight/eigGt/g;s/nine/nNne/g' ../input | \
tr 'E' '1' | tr 'W' '2' | tr 'H' '3' | tr 'O' '4' | tr 'I' '5' | tr 'X' '6' | tr 'V' '7' | tr 'G' '8' | tr 'N' '9' | \
sed 's/[a-z]//g;s/[A-Z]//g' |  \
sed 's/\(^.\).*\(.$\)/\1\2/g' | \
sed 's/\(^.$\)/\1\1/' | \
tr '\n' '+' | \
sed 's/+$//' | \
xargs | \
bc
