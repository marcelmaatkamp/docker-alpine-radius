# Freeradius Docker image

Lightweigth and fast starting Freeradius3 (3.0.6-r1) Docker image 
This image size is 12.28 MB, starts blazingly fast and is based on Alpine Linux.

To start 
```
 $ docker run -d \
   --name freeradius \
   -p 1812:1812/udp \
   -p 1813:1813 \
   -p 18120:18120 \
   marcelmaatkamp/freeradius
```
