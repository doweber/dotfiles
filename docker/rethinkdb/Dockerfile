FROM local/devuser:base
MAINTAINER Doug Weber <doug@masteryconnect.com>

RUN source /etc/lsb-release && echo "deb http://download.rethinkdb.com/apt $DISTRIB_CODENAME main" | sudo tee /etc/apt/sources.list.d/rethinkdb.list && \
    wget -qO- http://download.rethinkdb.com/apt/pubkey.gpg | sudo apt-key add - && \
    sudo apt-get update && \
    sudo apt-get install -y rethinkdb


VOLUME /data

# Listening for intracluster connections on port 29015
EXPOSE 29015
# Listening for client driver connections on port 28015
EXPOSE 28015
# Listening for administrative HTTP connections on port 8080
EXPOSE 8080

CMD ["rethinkdb","--bind","all","-d","/data"]
