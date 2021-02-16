#!/bin/bash
cut -d - -f1 $1 | sort | uniq -c | sort -gr > ~/frIps.txt

echo "The most frequent requesting IP in given file is $( head -n 1 ~/frIps.txt | awk '{print $2}' ) "  
echo "The number of request for a given period: $( head -n 1 ~/frIps.txt | awk '{print $1}' ) "

echo "all the info about number of requests and ips you can fing in ~/frIps.txt"
