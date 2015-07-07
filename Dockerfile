# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    Node image based on debian:jessie
# TO_BUILD:       docker build --rm -t airdock/node .
# SOURCE:         https://github.com/airdock-io/docker-node

# Pull base image.
FROM airdock/base:latest
MAINTAINER Jerome Guibert <jguibert@gmail.com>

# Install Node.js using https://github.com/nodesource/distributions
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -
  apt-get install -y nodejs && \
  /root/post-install
  
# Define default workdir
WORKDIR /srv/node

# default export 
EXPOSE 80 443

# volume 
VOLUME /srv/node

# Define default command.
ENTRYPOINT [ "node"]
CMD [ "--version"]
