#!/bin/sh
pkill -9 python
pkill -9 nodeos
pkill -9 keosd

rm -rf ~/eosio-wallet/*
