#!/bin/bash
#

source ssl/config.txt

sed -i -e "s/{{ PASS_BASE64 }}/$PASS_BASE64/g" nginx.conf
sed -i -e "s/{{ BASE_URL }}/$BASE_URL/g" nginx.conf

exec nginx -g "daemon off;"
