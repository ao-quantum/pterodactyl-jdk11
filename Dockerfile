# Pterodactyl Java 11 Dockerfile
FROM        openjdk:11-slim-buster

LABEL       author="Aditya Das" maintainer="me@quantumsoul.dev"

RUN apt-get update -y
RUN apt-get install -y curl ca-certificates openssl sqlite iproute2 \
RUN useradd -d /home/container -m container
 
USER container
ENV  USER=container HOME=/home/container

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
