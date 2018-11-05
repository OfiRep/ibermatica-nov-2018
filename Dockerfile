FROM ubuntu:18.04

MAINTAINER Tomy - <tomasortega@mainakesystems.com>

RUN apt-get update
RUN apt-get install nginx -y

ENTRYPOINT ["nginx","-g","daemon off;"]

WORKDIR /etc