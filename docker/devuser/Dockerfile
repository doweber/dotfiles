# The dev user base image that all other dev images are built from
# main purpose is to create the dev user that matches the user doing the image build
FROM ubuntu:14.04
MAINTAINER Doug Weber <doug@masteryconnect.com>
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN sed -i '26s/) ALL/) NOPASSWD:ALL/' /etc/sudoers
RUN groupadd -o --gid $GROUPID dev && useradd -m --uid $USERID --gid $GROUPID dev -g dev -G sudo
RUN apt-get update && apt-get upgrade -yq && apt-get install -y build-essential curl wget git-core software-properties-common
USER dev
WORKDIR /home/dev
