#!/bin/bash

#awk '{print $4}' $1

while read l; do

echo ${l:1:-3} >> temp


done <<< $( awk '{print $4}' "$1" )

sort temp | uniq -c | sort -gr > ~/frTime.txt

rm temp

echo "site get most request at: $( head -n 1 ~/frTime.txt | awk '{print $2}' ) "
echo "Number of requests: $( head -n 1 ~/frTime.txt | awk '{print $1}' ) "
