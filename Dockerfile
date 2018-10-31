FROM ubuntu:18.04

MAINTAINER Tomy - <tomasortega@mainakesystems.com>

RUN apt-get update
RUN apt-get install nginx -y
RUN echo '<marquee>Hello Ibermática From Docker!</marquee>' \
        > /var/www/html/index.html

EXPOSE 80