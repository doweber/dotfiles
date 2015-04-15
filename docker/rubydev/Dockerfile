FROM local/devuser:base
MAINTAINER Doug Weber <doug@masteryconnect.com>

RUN sudo add-apt-repository -y ppa:brightbox/ruby-ng
RUN sudo apt-get update && sudo apt-get install -y ruby2.2 ruby2.2-dev

# Setup Rubygems
RUN sudo sh -c "echo 'gem: --no-document' > /etc/gemrc" && \
    sudo gem install bundler
