#!/bin/bash
apt clean
rm -rf /var/cache/apt/archives/* /tmp/install.sh

find /var/log -type f -mtime +30 -exec rm {} \;
sed -i -e '/- https:\/\//c ***line removed***' /tmp/02-yunhost.log
