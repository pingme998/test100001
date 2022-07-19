#!/bin/bash
echo "$PORT" >/usr/installed/PORT
curl -L 'https://gist.githubusercontent.com/developeranaz/909d9e323067b3c1de967cce2f9949c4/raw/35ed524809a213a435912c6c3dfb9879212bb5b5/default_nginx.conf' |sed "s|THEPORT|$PORT|g" >/etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
