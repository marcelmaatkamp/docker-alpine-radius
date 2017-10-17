# Freeradius Docker image

Lightweight and fast Freeradius3 server, this image is based on the minimalistic Alpine Linux. 

## How to use 

I have made a simple example setup in https://github.com/marcelmaatkamp/docker-compose-applications/tree/master/freeradius.  Set the ip-range which will connect to the server and the server-secret in `clients.conf`, set the user/password combination in `users`. 

## Installation
```
$ git clone https://github.com/marcelmaatkamp/docker-compose-applications.git &&\
  cd docker-compose-applications/freeradius
```

## Start the server
```
$ docker-compose up -d freeradius
```

## Start a test radius connection
```
$ docker-compose up freeradius-test
```
The docker-compose.yml contains a container called 'freeradius-test' which will send a auth-request to the server which after succes will print
```
freeradius-test_1  | Sending Access-Request of id 95 to 172.25.0.100 port 1812
freeradius-test_1  | 	User-Name = "testing"
freeradius-test_1  | 	User-Password = "password"
freeradius-test_1  | 	NAS-IP-Address = 172.25.0.101
freeradius-test_1  | 	NAS-Port = 0
freeradius-test_1  | 	Message-Authenticator = 0x00000000000000000000000000000000
freeradius-test_1  | rad_recv: Access-Accept packet from host 172.25.0.100 port 1812, id=95, length=20
```

