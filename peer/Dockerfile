FROM torrent_base:1.0.0
MAINTAINER ash@the-rebellion.net

ADD ./config/supervisord.d/peer.ini /etc/supervisord.d/peer.ini
ADD ./bin/peer.sh /opt/bin/peer.sh

RUN chmod 755 /opt/bin/peer.sh

CMD [ "/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf" ]
