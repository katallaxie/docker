#!/bin/bash

MARATHON_HOST=${MARATHON_HOST:-marathon}
MARATHON_PORT=${MARATHON_PORT:-8080}

# Set custom webroot
if [ ! -z "$MARATHON_HOST" ]; then
 sed -i "s/###MARATHON_HOST###/${MARATHON_HOST}/g" /usr/local/openresty/nginx/conf/nginx.conf
fi

if [ ! -z "$MARATHON_PORT" ]; then
 sed -i "s/###MARATHON_PORT###/${MARATHON_PORT}/g" /usr/local/openresty/nginx/conf/nginx.conf
fi

cat /usr/local/openresty/nginx/conf/nginx.conf

# Start OpenResty
exec /usr/local/openresty/bin/openresty "-g" "daemon off;"
