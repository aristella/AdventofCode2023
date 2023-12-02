#!/bin/bash
#
sed 's/[a-z]//g' ../input |  \
sed 's/\(^.\).*\(.$\)/\1\2/g' | \
sed 's/\(^.$\)/\1\1/' | \
tr '\n' '+' | \
sed 's/+$//' | \
xargs | \
bc
