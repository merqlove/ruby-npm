FROM ruby:2.3.3
MAINTAINER Alexander Merkulov @merqlove

RUN apt-get update -qq > /dev/null 2>&1 && \
    curl -sL https://deb.nodesource.com/setup_6.x | bash - > /dev/null 2>&1 && \
    apt-get install -qqy imagemagick nodejs > /dev/null 2>&1 && \
    npm install -g bower > /dev/null 2>&1 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /
