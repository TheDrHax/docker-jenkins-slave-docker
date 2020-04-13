FROM thedrhax/jenkins-slave-alpine

MAINTAINER Dmitry Karikh <the.dr.hax@gmail.com>

RUN apk --no-cache add docker-cli

ADD prepare-docker.sh /entrypoint.d/
