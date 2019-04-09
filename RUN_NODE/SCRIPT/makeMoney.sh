#!/bin/sh
if [ $1 ] ;
then
	echo $ASSET
	./setContract.sh eosio.token eosio.token
	/EOS/cleos push action eosio.token create '["eosio","1000000.0000 EOS"]' -p eosio.token
	/EOS/cleos push action eosio.token issue '["'$1'","1000000.0000 EOS"]' -p eosio
	/EOS/cleos get currency balance eosio.token $1
fi

