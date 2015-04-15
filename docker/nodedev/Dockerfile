# Dockerfile for building the basic node env
FROM local/devuser:base
MAINTAINER Doug Weber <doug@masteryconnect.com>

RUN curl -O http://nodejs.org/dist/v0.12.2/node-v0.12.2-linux-x64.tar.gz

RUN cd /usr/local && sudo tar --strip-components 1 -xzf ~/node-v0.12.2-linux-x64.tar.gz
