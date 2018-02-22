#building apache
FROM centos:latest
MAINTAINER preetiroy133@gmail.com
RUN yum -y update
RUN yum -y install httpd
EXPOSE 80
ADD code /var/www/html
cmd ["apachectl","-D","FOREGROUND"]
