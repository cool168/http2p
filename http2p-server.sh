#!/bin/sh

echo ${EN_3CFG='no'}
CONF="/etc/3proxy.cfg"

if  [ $EN_3CFG = "no" ]
then
	cp /app/3proxy.cfg $CONF	
	sed -i "s/USER_PWD/${USER_PWD}/g" $CONF
fi
sleep 1

/app/3proxy $CONF
