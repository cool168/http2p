#!/bin/sh

INSTALL_FLAG="/app/p2p-server.installed"
CONF="/app/3proxy.cfg"

if [ ! -f "$INSTALL_FLAG" ]; then
	touch $INSTALL_FLAG
fi

cp /app/3proxy.cfg $CONF	
sed -i "s/SERVER_PORT/${SERVER_PORT}/g" $CONF
