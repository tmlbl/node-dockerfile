FROM debian:wheezy
MAINTAINER tmlbl tim@shippable.com

# Will use curl to fetch the binaries
RUN apt-get update
RUN apt-get install -y curl

# Download and unpack binaries into /usr/local/bin
RUN curl http://\
nodejs.org/dist/v0.10.30/node-v0.10.30-linux-x64.tar.gz|\
tar -xzvf - --strip-components=1 -C /usr/local
