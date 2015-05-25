# Freeradius Docker image

Lightweight and fast Freeradius3 (3.0.6-r1) server Docker image. This image size is 12.28 MB, starts blazingly fast and is based on Alpine Linux. 

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

To  test with username 'testing' and password 'password' on device '192.168.1.18' and secret 'SECRET':
```
 $ radtest testing password 192.168.1.18 0 SECRET
```

To debug:
```
 $ docker logs freeradius
```

