FROM marcelmaatkamp/alpine-base

RUN apk add --update freeradius3 freeradius3-sqlite freeradius3-radclient sqlite && \
    rm /var/cache/apk/*

VOLUME \
    /opt/db/ \
    /etc/freeradius/certs

EXPOSE \
    1812/udp \
    1813 \
    18120

CMD radiusd /etc/raddb
