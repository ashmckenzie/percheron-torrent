FROM gliderlabs/alpine:latest
MAINTAINER ash@the-rebellion.net

ENV HOME /root
ENV TERM ansi
ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/go/bin
ENV GOPATH /opt/go

RUN apk add --update-cache supervisor aria2

RUN mkdir -p /opt/bin /opt/go /etc/supervisord.d

ADD ./config/supevisord.conf /etc/supervisord.conf

CMD [ "/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf" ]
