#!/bin/bash
/EOS/nodeos -e -p eosio --plugin eosio::chain_api_plugin --plugin eosio::history_api_plugin --verbose-http-errors --contracts-console --delete-all-blocks --hard-replay-blockchain
--access-control-allow-origin=* --plugin eosio::producer_plugin --plugin eosio::http_plugin  
