FROM debian:jessie

# Install Nginx.
RUN \
  apt-get update && \
  apt-get install -y nginx && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R www-data:www-data /var/lib/nginx

ADD etc/nginx/sites-enabled/default /etc/nginx/sites-enabled/default
ADD etc/nginx/nginx.conf /etc/nginx/nginx.conf

# Define mountable directories.
VOLUME ["/var/log/nginx"]

# Define working directory.
WORKDIR /etc/nginx

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
#EXPOSE 443

# to run: docker run -d -p 80:80 -v <hostLogDir>:/var/log/nginx <image>
