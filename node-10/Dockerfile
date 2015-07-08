# VERSION 1.0
# AUTHOR:         Jerome Guibert <jguibert@gmail.com>
# DESCRIPTION:    Node image based on debian:jessie
# TO_BUILD:       docker build --rm -t airdock/node .
# SOURCE:         https://github.com/airdock-io/docker-node

FROM airdock/base:latest
MAINTAINER Jerome Guibert <jguibert@gmail.com>

ENV NODE_VERSION v0.10.39

# Install Node.js 
RUN apt-get update -qq && apt-get install -y --no-install-recommends python build-essential ca-certificates && \
  mkdir -p /opt/node && \
  curl http://nodejs.org/dist/$NODE_VERSION/node-$NODE_VERSION-linux-x64.tar.gz | tar xvzf - -C /opt/node --strip-components=1 && \
  chown -R node:node /opt/node && \
  ln -s  /opt/node/bin/node /usr/local/bin/node && \ 
  ln -s  /opt/node/bin/npm /usr/local/bin/npm && \
  /root/post-install 

# Define default command.
ENTRYPOINT ["gosu", "node:node", "node"]
CMD [ "--version"]
