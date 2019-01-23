#!/bin/sh
CONTRACT="hello"
CONTRACT="eos3dio12345"
echo "HELLO CONTRACT SET AND CALL METHOD" 
echo "\n"
/EOS/cleos set contract $1 /SHARE/$CONTRACT
sleep 2
#a/EOS/cleos push action eosio.token issue  '["'$1'","100000000000.0000 EOS"]' -p eosio 
/EOS/cleos push action $1 hi '["k1rh4"]' -p $1
