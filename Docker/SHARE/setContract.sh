#!/bin/sh
CONTRACT="hello"
CONTRACT="eos3dio12345"
if [ $1 ];
then
	NAME=$1
fi
if [ $2 ];
then 
	CONTRACT=$2
fi
echo "HELLO CONTRACT SET AND CALL METHOD" 
/EOS/cleos set contract $NAME $CONTRACT
