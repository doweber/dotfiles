# Dockerfile for building the basic node env
FROM local/devuser:base
MAINTAINER Doug Weber <doug@masteryconnect.com>

RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash

ENV NVM_DIR /home/dev/.nvm

RUN source /home/dev/.nvm/nvm.sh && nvm install stable && nvm alias default stable
