#----------------------------------
#  Pterodactyl Node.js Dockerfile
#  Made by xXQuantumSoulXx
#  Licensed under the MIT license
#----------------------------------

FROM node:14.15.1-alpine3.12

MAINTAINER xXQuantumSoulXx, <me@quantumsoul.xyz>

RUN apk add --no-cache --update curl ca-certificates openssl git tar bash sqlite fontconfig \
    && adduser -D -h /home/container container

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
