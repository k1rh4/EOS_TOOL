#!/bin/bash
USER_NAME=$1
rm -rf /home/k1rh4/eosio-wallet/./$USER_NAME.wallet
cleos wallet create --to-console -n $USER_NAME
cleos wallet create_key -n $USER_NAME
echo "::::::::: CREATE RANDOM KEY ::::::::::::"
DATA=`cleos create key --to-console`
PRV_KEY=`echo $DATA | awk -F "[ ]" {'print $3'}`
echo $PRV_KEY
PUB_KEY=`echo $DATA | awk -F "[ ]" {'print $6'}`
echo $PUB_KEY
echo "::::::::::::::::::::::::::::::::::::::::"
if [ "$1" == "eosio" ]; then 
	cleos wallet import -n eosio --private-key 5KQwrPbwdL6PhXujxW37FSSQZ1JiwsST4cqQzDeyXtP79zkvFD3
else
	cleos wallet import --name $USER_NAME --private-key $PRV_KEY
fi

echo 'cleos create account eosio '$USER_NAME' EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV' $PUB_KEY
cleos create account eosio $USER_NAME "EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV" $PUB_KEY
#cleos system newaccount eosio $USER_NAME "EOS6MRyAjQq8ud7hVNYcfnVPJqcVpscN5So8BhtHuGYqET5GDW5CV" $PUB_KEY  --stake-net "0.0001 EOS" --stake-cpu "0.0001 EOS" --buy-ram-kbytes 10000
