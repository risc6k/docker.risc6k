FROM ubuntu:14.04
MAINTAINER "korea-lee <hyunyong.lee@ocmkorea.com>"
LABEL "purpose"="practice"
RUN apt-get update
RUN apt-get install -y apache2
COPY ./index.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
