FROM marcelmaatkamp/alpine-base

RUN apk update && apk upgrade && \
    apk add --update freeradius freeradius-sqlite freeradius-radclient sqlite && \
    chgrp radius  /var/run/radiusd && chmod g+rwx /var/run/radiusd && \
    rm /var/cache/apk/*

VOLUME \
    /opt/db/ \
    /etc/freeradius/certs

EXPOSE \
    1812/udp \
    1813 \
    18120

CMD radiusd -f
