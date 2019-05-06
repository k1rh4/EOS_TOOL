#!/bin/bash 

while [ 1 ] ;
do
	sleep 0.5
	./getRaminfo.sh provider >> result.txt
done;

