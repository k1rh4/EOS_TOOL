#!/bin/bash
if [ $1 ];
then
	cleos get account $1 | grep quota
fi
