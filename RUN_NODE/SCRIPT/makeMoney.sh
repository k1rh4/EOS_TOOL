#!/bin/sh
if [ $1 ] ;
then
	echo $ASSET
	./setContract.sh eosio.token eosio.token
	cleos push action eosio.token create '["eosio","1000000.0000 EOS"]' -p eosio.token
	cleos push action eosio.token issue '["'$1'","1000000.0000 EOS","memo"]' -p eosio
	cleos get currency balance eosio.token $1
fi

