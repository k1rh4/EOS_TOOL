#!/bin/bash
if [ $1 ];
then
	#cleos get account $1 | grep quota
	date
	cleos get account $1 | grep used 
fi
