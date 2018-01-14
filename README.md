# Jenkins slave with Docker for Docker [![](https://images.microbadger.com/badges/image/thedrhax/jenkins-slave-docker.svg)](https://hub.docker.com/r/thedrhax/jenkins-slave-docker)

This image extends [thedrhax/jenkins-slave-alpine](https://hub.docker.com/r/thedrhax/jenkins-slave-alpine/) with Docker and rancher-compose.

To get information about all configuration variables, see parent image's README.

## Example

```
docker run -d -v /var/run/docker.sock:/var/run/docker.sock thedrhax/jenkins-slave-docker
```

## Docker & Rancher configuration variables

* `-e REGISTRY_0="user:pass@index.docker.io/v1/"` — Docker Hub
* `-e REGISTRY_1="user:pass@registry.domain"` — any other private registry
* `-e RANCHER_URL="http://server_ip:8080/"` — Rancher base URL
* `-e RANCHER_ACCESS_KEY=""`
* `-e RANCHER_SECRET_KEY=""`

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](./LICENSE) file for details.
