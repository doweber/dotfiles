FROM local/devuser:base
MAINTAINER Doug Weber <doug@masteryconnect.com>

RUN sudo apt-get update && sudo apt-get install -y \
  wget \
  unzip \
  software-properties-common

RUN sudo apt-add-repository -y ppa:webupd8team/java \
  && sudo echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections \
  && sudo echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections \
  && sudo apt-get update && sudo apt-get install -y \
        oracle-java8-installer

ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle
