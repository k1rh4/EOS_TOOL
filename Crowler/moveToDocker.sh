#!/bin/sh
if [ $1 ] ;
then
    CONTRACT_PATH=$1
    cp -r "./CONTRACT/$CONTRACT_PATH" ./Docker/SHARE/CONTRACT/ 
fi
