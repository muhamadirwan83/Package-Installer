#!/bin/sh
/usr/bin/mongo --port 27117 < /root/mongo_prune_js.js
/usr/sbin/service unifi stop
/bin/rm /usr/lib/unifi/logs/mongod.log
/bin/rm /usr/lib/unifi/logs/server.log
/sbin/swapoff -a
/sbin/swapon -a
/sbin/reboot
