#!/bin/bash
 cleos push action eosio.token transfer '["eosio.token","'$1'","10.0000 EOS","memo"]' -p eosio.token@active
