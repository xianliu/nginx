FROM ubuntu:14.04
MAINTAINER Xian Liu "lxjsj.kevin@gmail.com"
ENV REFRESHED_AT 2016-10-18
RUN apt-get update
RUN apt-get -y -q install nginx
RUN mkdir -p /var/www/html/website
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
