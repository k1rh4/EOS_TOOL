#!/bin/sh

echo $1

/EOS/cleos set contract eosio.token /SHARE/eosio.token/ -p eosio.token
/EOS/cleos push action eosio.token create '["eosio","100000000000.0000 EOS"]' -p eosio.token
/EOS/cleos push action eosio.token issue  '["'$1'","100000000000.0000 EOS"]' -p eosio
/EOS/cleos get currency balance eosio.token $1

