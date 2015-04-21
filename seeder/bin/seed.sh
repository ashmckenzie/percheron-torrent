#!/bin/sh

cd /tmp
tar czvf usr_lib.tar.gz /usr/lib
rm -f usr_lib.tar.gz.torrent
transmission-create --private --tracker http://tracker:8080/announce usr_lib.tar.gz
cp usr_lib.tar.gz.torrent /srv/www
chmod 644 /srv/www/usr_lib.tar.gz.torrent

exec /usr/bin/aria2c --seed-ratio=0.0 -V -d . usr_lib.tar.gz.torrent
