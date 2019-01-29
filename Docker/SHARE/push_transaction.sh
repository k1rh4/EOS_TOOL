#!/bin/sh
CONTRACT="hello"
if [ $1 ];
then 
	CONTRACT=$1
fi
echo "PUSH ACTION" 
#a/EOS/cleos push action eosio.token issue  '["'$1'","100000000000.0000 EOS"]' -p eosio 
/EOS/cleos push action $1 hi '["k1rh4"]' -p $1
