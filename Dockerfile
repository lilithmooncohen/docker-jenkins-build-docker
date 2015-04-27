FROM ryanckoch/docker-jenkins

ENV JENKINS_HOME /var/jenkins_home

VOLUME /var/run/docker.sock:/run/docker.sock
VOLUME /usr/bin/docker:/usr/bin/docker

USER root

RUN apt-get update && apt-get install -y libapparmor1 && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/local/bin/jenkins.sh"]
