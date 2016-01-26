#!/bin/sh
echo "About to configure haproxy"
PORT=$(cat logs/env.log | grep -m 1 VCAP_APP_PORT | cut -d '=' -f 2)
sed -i "s/\TEMP/$PORT/g" haproxy.cfg
echo "haproxy configure:"
cat haproxy.cfg
echo "About to start haproxy"
./haproxy -f haproxy.cfg -db
