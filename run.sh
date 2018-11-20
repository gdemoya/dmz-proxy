#!/bin/bash
#

source ssl/pass.txt

echo "$PASS_BASE64"
sed -i -e "s/{{ PASS_BASE64 }}/$PASS_BASE64/g" nginx.conf

exec nginx -g "daemon off;"
