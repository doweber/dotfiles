FROM local/devuser:base
MAINTAINER Doug Weber <doug@masteryconnect.com>

RUN sudo apt-get update && sudo apt-get install -y wget

ENV GOPATH=/home/dev/go

RUN wget https://godeb.s3.amazonaws.com/godeb-amd64.tar.gz && \
    mkdir -p /home/dev/go/bin && \
    tar -zxvf ./godeb-amd64.tar.gz && \
    mv godeb /home/dev/go/bin/ && \
    rm ./godeb-amd64.tar.gz

RUN $GOPATH/bin/godeb install

ENTRYPOINT ["go"]
