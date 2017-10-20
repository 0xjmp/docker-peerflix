FROM node:latest

RUN apt-get update

RUN npm install -g peerflix-server

RUN useradd -ms /bin/bash peerflix
USER peerflix
WORKDIR /home/peerflix

ENTRYPOINT peerflix-server
