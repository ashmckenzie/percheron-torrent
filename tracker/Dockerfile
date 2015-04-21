FROM torrent_base:1.0.0
MAINTAINER ash@the-rebellion.net

RUN apk add --update-cache git go godep
RUN go get github.com/chihaya/chihaya && cd ${GOPATH}/src/github.com/chihaya/chihaya/cmd/chihaya && godep go install && rm -rf ${GOPATH}/src

ADD ./config/config.json /tmp/config.json
ADD ./config/supervisord.d/tracker.ini /etc/supervisord.d/tracker.ini

EXPOSE 8080

CMD [ "/usr/bin/supervisord", "-n", "-c", "/etc/supervisord.conf" ]
