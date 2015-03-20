FROM marcelmaatkamp/alpine-base

RUN apk update
RUN apk-install freeradius3-sqlite sqlite

VOLUME /opt/db/
VOLUME /etc/freeradius/certs

EXPOSE 1812/udp
EXPOSE 1813
EXPOSE 18120

CMD radiusd -X /etc/raddb
