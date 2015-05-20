FROM local/node:dev
MAINTAINER Doug Weber <doug@masteryconnect.com>

RUN sudo apt-get update && sudo apt-get install -y couchdb
RUN sudo npm install -g hoodie-cli

ENTRYPOINT ["hoodie"]
