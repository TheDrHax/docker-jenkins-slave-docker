#!/bin/sh

parse_entry() {
  echo -n "\"https://$3\": { \"auth\": \"$(echo -n $1:$2 | base64)\" }"
}

if [ "$REGISTRY_0" ]; then
mkdir -p /root/.docker
cat >> /root/.docker/config.json <<EOF
{ "auths": {
`
count=$(env | grep REGISTRY_ | wc -l)
i=0
env | grep REGISTRY_ | sed 's/REGISTRY_[0-9]*=//g' | while read entry; do
  parse_entry $(echo $entry | sed 's/\(.*\):\(.*\)@\(.*\)/\1 \2 \3/')
  i=$((i+1))
  [ $i -eq $count ] && echo || echo ","
done
`
}}
EOF
fi
