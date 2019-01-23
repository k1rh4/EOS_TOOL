#!/bin/sh 
ID="efuzz"
NAME=$ID 
NAME=""
FLAG="0"
if [ $1 ] 
then
	NAME=$1
fi

if [ $2 ]
then
	if [ $2 = "debug" ]
	then 
	FLAG="debug"
	fi
fi
sudo docker rm $NAME
sudo docker kill $NAME

sudo docker build --tag $NAME:1.0 ./

PORT="-p 2222:22"
SHARED="-v `pwd`/CRASH/:/tmp/crash -v `pwd`/SHARE/:/SHARE"
OPTION="--rm --privileged --cap-add=SYS_PTRACE --ulimit core=-1 --security-opt seccomp=unconfined"
#OPTION=" --read-only --rm -v `pwd`/tmp/:/tmp"

sudo docker run -idt --name $NAME $PORT $SHARED $OPTION $NAME:1.0 /entry.sh $FLAG
##sudo docker run -d --name $NAME $PORT $SHRED $OPTION $NAME:1.0
