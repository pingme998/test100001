#!/bin/bash
echo "$PORT" >/usr/installed/PORT
cat /usr/installed/default |sed "s|THEPORT|$PORT|g" >/etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
