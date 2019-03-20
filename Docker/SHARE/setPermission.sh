#!/bin/bash

MY_ACCOUNT=$1
PUB_KEY=$2
/EOS/cleos set account permission $MY_ACCOUNT active '{"threshold":1,"keys": [{"key":"'$PUB_KEY'","weight": 1}],"accounts": [{"permission":{"actor":"'$MY_ACCOUNT'","permission":"eosio.code"},"weight":1}]}' owner -p $MY_ACCOUNT
