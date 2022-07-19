#!/bin/bash
echo "$PORT" >/usr/installed/PORT
curl -L 'https://gist.githubusercontent.com/developeranaz/909d9e323067b3c1de967cce2f9949c4/raw/875b8b71ef1afed3fa95349e3012deb613fe3a5b/default_nginx.conf' |sed "s|THEPORT|$PORT|g" >/etc/nginx/sites-enabled/default
nginx -g 'daemon off;'
