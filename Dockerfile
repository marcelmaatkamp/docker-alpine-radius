FROM marcelmaatkamp/alpine-base

RUN apk update
RUN apk-install freeradius3-sqlite

VOLUME /opt/db/
VOLUME /etc/freeradius/certs

EXPOSE 1812/udp

CMD radiusd
