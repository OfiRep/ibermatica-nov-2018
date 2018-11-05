FROM ubuntu:18.04

MAINTAINER Tomy - <tomasortega@mainakesystems.com>

RUN useradd nginx

RUN apt-get update
RUN apt-get install nginx -y
RUN apt-get install libltdl7 && rm -rf /var/lib/apt/lists/*

COPY ./data-1.txt /my-custom-path/

ENTRYPOINT ["nginx","-g","daemon off;"]

ENV DATABASE_IP 192.150.2.5


WORKDIR /etc

VOLUME ["/my-data"]
VOLUME ["/pako-data"]

#USER nginx