FROM ruby:2.3.3
MAINTAINER Alexander Merkulov @merqlove

RUN apt-get update -qq > /dev/null 2>&1

# See : https://github.com/phusion/baseimage-docker/issues/58
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - > /dev/null 2>&1

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
RUN apt-get update -qq

RUN apt-get install -qqy imagemagick nodejs lftp ansible jq curl > /dev/null 2>&1 && \
    npm install -g bower > /dev/null 2>&1 && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /
