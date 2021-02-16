#!/bin/bash

awk '{print $7}' $1 | sort | uniq -c | sort -gr > ~/frPages.txt

echo "The most freqently visited page in a given log is: $( head -n 1 ~/frPages.txt | awk '{print $2}' ) "
echo "The number of requests: $( head -n 1 ~/frPages.txt | awk '{print $1}' )" 
echo "Detailed info about pages and number of visits you can check in ~/frPages.txt"

echo "The clients where referred to those non existing pages: "
echo

awk '{print $9 "\t" $7}' $1 > ~/tmp.txt

while read l; do

i=$(cut -f1 <<< "$l" )
#echo $i
if (( "$i"==404 ))
then
	echo $(cut -f2 <<< "$l") 
fi
done <  tmp.txt
