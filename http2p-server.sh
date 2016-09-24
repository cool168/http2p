#!/bin/sh

INSTALL_FLAG="/app/p2p-server.installed"
CONF="/app/3proxy.cfg"

if [ ! -f "$INSTALL_FLAG" ]; then
	touch $INSTALL_FLAG
fi

cp /app/3proxy.cfg $CONF	
sed -i "s/USER_PWD/${USER_PWD}/g" $CONF
/app/3proxy $CONF
