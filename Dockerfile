FROM thedrhax/jenkins-slave-alpine

MAINTAINER Dmitry Karikh <the.dr.hax@gmail.com>

ENV DOCKER_HUB_LOGIN="dXNlcm5hbWU6cGFzc3dvcmQ=" \
    DOCKER_HUB_EMAIL="example@example.com"

RUN apk --no-cache add docker

ADD prepare-docker.sh /entrypoint.d/
