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

cleos set contract $NAME $CONTRACT -p "$1@active"
#/EOS/cleos set contract $NAME $CONTRACT -p "$1@eosio.code"
