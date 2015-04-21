#!/bin/sh

cd /tmp
until `wget -q http://seeder/usr_lib.tar.gz.torrent -O - > /dev/null 2>&1`
do
  date
  sleep 1
done

exec /usr/bin/aria2c --seed-time=0 http://seeder/usr_lib.tar.gz.torrent
