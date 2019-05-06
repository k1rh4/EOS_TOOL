#!/bin/bash 
./makeSystemUser.sh eosio
./makeSystemUser.sh eosio.token
./makeSystemUser.sh eosio.ram
./makeSystemUser.sh eosio.ramfee
./makeSystemUser.sh eosio.upay
./makeSystemUser.sh eosio.pay
./makeSystemUser.sh eosio.stake
./makeSystemUser.sh eosio.bpay
./makeSystemUser.sh eosio.saving
./makeSystemUser.sh eosio.names
./makeSystemUser.sh eosio.msig
./makeSystemUser.sh capamerica
./makeSystemUser.sh provider
 
./setContract.sh eosio.token ./eosio.token/ 
./setContract.sh eosio ./eosio 
./makeMoney.sh eosio.token 
./sendMoney.sh eosio 
./init.sh

./makeUser.sh client1
./makeUser.sh client2
./makeUser.sh client3
./makeUser.sh client4

