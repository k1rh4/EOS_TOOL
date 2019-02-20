#!/bin/bash
if [ $1 ];
then
	/EOS/cleos get account $1 | grep quota
fi
