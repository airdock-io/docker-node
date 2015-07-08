# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    Node image based on debian:jessie
# TO_BUILD:       docker build --rm -t airdock/node .
# SOURCE:         https://github.com/airdock-io/docker-node

# Pull base image.
FROM airdock/base:latest
MAINTAINER Jerome Guibert <jguibert@gmail.com>

# Define default workdir
WORKDIR /srv/node

# Install Node.js using https://github.com/nodesource/distributions
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash - && \
  apt-get install -y nodejs && \
  chown -R node:node /srv/node && \
  /root/post-install

# default export 
EXPOSE 80 443

# volume 
VOLUME /srv/node

# Define default command.
ENTRYPOINT ["gosu", "node:node", "node"]
CMD [ "--version"]
