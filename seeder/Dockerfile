FROM torrent_base:1.0.0
MAINTAINER ash@the-rebellion.net

RUN apk add --update-cache nginx transmission-cli

RUN mkdir -p /srv/www /tmp/nginx/client-body

ADD ./config/supervisord.d/nginx.ini /etc/supervisord.d/nginx.ini
ADD ./config/supervisord.d/seeder.ini /etc/supervisord.d/seeder.ini
ADD ./config/nginx.conf /etc/nginx/nginx.conf
ADD ./bin/seed.sh /opt/bin/seed.sh

RUN chmod 755 /opt/bin/seed.sh

EXPOSE 80

CMD [ "/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf" ]
