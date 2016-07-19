#!/bin/sh
echo "About to configure haproxy"
sed -i "s/\TEMP/$PORT/g" haproxy.cfg
echo "haproxy configure:"
cat haproxy.cfg
echo "About to start haproxy"
./haproxy -f haproxy.cfg -db
