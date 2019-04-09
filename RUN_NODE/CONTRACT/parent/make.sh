#!/bin/bash

CONTRACT=$1
eosio-cpp -o $CONTRACT.wasm $CONTRACT.cpp --abigen -I /Users/k1rh4/GIT/EOS/build/contracts -I/Users/k1rh4/GIT/EOS/libraries/chain/include/eosio/chain
 #eosio-cpp -o test.wasm test.cpp --abigen
