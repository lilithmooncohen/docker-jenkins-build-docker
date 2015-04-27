# Jenkins Docker image with 'docker build' capabilities

# Usage

```
docker run -d --name jenkins -p 8080:8080 -v /local/jenkins/path:/var/jenkins_home -v /var/run/docker.sock:/run/docker.sock -v $(which docker):/bin/docker ryanckoch/docker-jenkins-build-docker
```
