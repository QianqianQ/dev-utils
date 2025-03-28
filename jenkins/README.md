# Jenkins

Self-contained, open source automation server which can be used to automate all sorts of tasks related to building, testing, and delivering or deploying software.

## Installation
```bash
# Docker
# https://www.jenkins.io/doc/book/installing/docker/
docker build -t myjenkins-blueocean:2.387.2-1 .

docker run \
  --name jenkins-blueocean \
  --restart=on-failure \
  --detach \
  --network jenkins \
  --env DOCKER_HOST=tcp://docker:2376 \
  --env DOCKER_CERT_PATH=/certs/client \
  --env DOCKER_TLS_VERIFY=1 \
  --publish 8080:8080 \
  --publish 50000:50000 \
  --volume jenkins-data:/var/jenkins_home \
  --volume jenkins-docker-certs:/certs/client:ro \
  --volume /path/to/local/data:/container/data \
  myjenkins-blueocean:2.387.2-1

sudo kill `sudo lsof -t -i:50000`

docker container stop jenkins-blueocean | xargs docker rm
```

## Troubleshooting

### HTML rendering issue
**Solution** Configuring Content Security Policy
```groovy
// Sets the CSP property to an empty string, allowing unrestricted HTML content
System.setProperty("hudson.model.DirectoryBrowserSupport.CSP", "")
```
