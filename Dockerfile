FROM marcelmaatkamp/alpine-base

RUN apk update
RUN apk install freeradius

VOLUME /opt/db/
VOLUME /etc/freeradius/certs

EXPOSE 1812/udp

CMD radius
