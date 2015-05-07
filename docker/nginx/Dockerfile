# Dockerfile for building the basic node env
FROM local/devuser:base
MAINTAINER Doug Weber <doug@masteryconnect.com>

RUN \
  sudo add-apt-repository -y ppa:nginx/stable && \
  sudo apt-get update && \
  sudo apt-get install -y nginx && \
  sudo rm -rf /var/lib/apt/lists/* && \
  sudo chown -R www-data:www-data /var/lib/nginx


COPY nginx.conf /etc/nginx/nginx.conf


# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]

# Define working directory.
WORKDIR /var/www/html

# Define default command.
CMD ["sudo","nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
