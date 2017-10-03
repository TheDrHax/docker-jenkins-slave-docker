#!/bin/sh

if [ "$DOCKER_HUB_LOGIN" ]; then
mkdir -p /root/.docker
cat >> /root/.docker/config.json <<EOF
{
  "auths": {
    "https://index.docker.io/v1/": {
      "auth": "$DOCKER_HUB_LOGIN",
      "email": "$DOCKER_HUB_EMAIL"
    }
  }
}
EOF
fi
