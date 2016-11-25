#!/bin/sh
if [ ! -f /etc/raddb/clients.conf.orig ]; then cp /etc/raddb/clients.conf /etc/raddb/clients.conf.orig; fi; cat /etc/raddb/clients.conf.orig | sed -e "s/127.0.0.1
/`echo $DEVICE_HOSTNAME`/g" | sed -e "s/testing123/`echo $DEVICE_SECRET`/g" > /etc/raddb/clients.conf; radiusd -X -f
