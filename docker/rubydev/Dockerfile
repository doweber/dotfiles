# This is a comment
FROM local/devuser:base
MAINTAINER Doug Weber <doug@masteryconnect.com>
RUN sudo apt-get update && sudo apt-get install -y libssl-dev libmysqlclient-dev libreadline-dev zlib1g-dev

RUN git clone https://github.com/sstephenson/rbenv.git ~/.rbenv && echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc && echo 'eval "$(rbenv init -)"' >> ~/.bashrc && mkdir -p ~/.rbenv/plugins && git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build && git clone https://github.com/rkh/rbenv-update.git ~/.rbenv/plugins/rbenv-update && git clone https://github.com/rkh/rbenv-whatis.git ~/.rbenv/plugins/rbenv-whatis && git clone https://github.com/rkh/rbenv-use.git ~/.rbenv/plugins/rbenv-use && git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash && git clone git://github.com/dcarley/rbenv-sudo.git ~/.rbenv/plugins/rbenv-sudo && git clone https://github.com/ianheggie/rbenv-binstubs.git ~/.rbenv/plugins/rbenv-binstubs && source ~/.bashrc

RUN PATH=/home/dev/.rbenv/shims:/home/dev/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin rbenv install 2.1.2

RUN echo "2.1.2" > /home/dev/.rbenv/version
# for session only setting of the ruby version, use ENV
# ENV RBENV_VERSION=2.1.2

RUN /home/dev/.rbenv/shims/gem install bundler
