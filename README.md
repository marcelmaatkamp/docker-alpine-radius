# Freeradius Docker image

Lightweight and fast Freeradius3 v3.0.11-r0 server. This image is based on the minimalistic Alpine Linux and is currently 62MB. 

To start: 
```
 $ docker run -d \
   --name freeradius \
   -p 1812:1812/udp \
   -p 1813:1813 \
   -p 18120:18120 \
   -e DEVICE_NAME=router_wireless \
   -e DEVICE_HOSTNAME=192.168.1.18 \
   -e DEVICE_SECRET=SECRET \
   -e USERNAME=testing \
   -e PASSWORD=password \
   marcelmaatkamp/freeradius
```

Once the image is started with the previous settings, one can test it with username 'testing' and password 'password' on device '192.168.1.18' and secret 'SECRET' in the following way:
```
$ radtest testing password 192.168.1.18 0 SECRET
```

To debug inspect the logs of the freeradius container:
```
$ docker logs freeradius
```

