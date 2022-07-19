#!/bin/bash
while :
do
chmod +x /usr/installed/cfagro
/usr/installed/cfagro tunnel http://127.0.0.1:8800 > "/var/www/html/index.html" 2>&1

sleep 1440
curl -L "SELFPINGURL"
curl -L "$PINGDOMAIN"

done
