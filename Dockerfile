FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y nodejs npm git git-core

RUN mkdir /root/.ssh/

ADD id_rsa /root/.ssh/id_rsa

RUN touch /root/.ssh/known_hosts

RUN ssh-keyscan -T 60 github.com >> /root/.ssh/known_hosts

ADD start.sh /tmp/

RUN chmod +x /tmp/start.sh

# CMD ./tmp/start.sh
