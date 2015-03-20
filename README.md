# Freeradius Docker image

Lightweigth and fast starting Freeradius3 (3.0.6-r1) Docker image 
This image size is 12.28 MB, starts blazingly fast and is based on Alpine Linux.

To use this image, clone <<home_repo>> or make your own Dockerfile and add a client and users you want to access your radius server:

Dockerfile:
```
$ cat Dockerfile
FROM marcelmaatkamp/freeradius

RUN echo "testing Cleartext-Password := \"password\"" >> /etc/raddb/users
RUN echo -e "client router_wireless {\n ipaddr = <<HOST_IP_ADDRESS>>\n secret = <<SECRET>>\n}" >> /etc/raddb/clients.conf
```

And build the image:
```
 $ docker build -t marcelmaatkamp/freeradius-home .
```

To start: 
```
 $ docker run -d \
   --name freeradius \
   -p 1812:1812/udp \
   -p 1813:1813 \
   -p 18120:18120 \
   marcelmaatkamp/freeradius-home
```

To just test user and password:
```
 $ docker exec -ti freeradius-home bash
 # radtest testing password localhost 0 testing123
```

To debug:
```
 $ docker logs freeradius-home
```
