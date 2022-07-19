#!/bin/bash
while :
do
/usr/bin/cloudflared tunnel 127.0.0.1:8800 > "/etc/nginx/sites-enabled/default" 2>&1

sleep 1440
curl -L "SELFPINGURL"
curl -L "$PINGDOMAIN"

done
