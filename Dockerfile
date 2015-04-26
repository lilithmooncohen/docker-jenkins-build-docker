FROM ryanckoch/docker-jenkins

ENV JENKINS_HOME /var/jenkins_home

USER root

RUN apt-get update && apt-get install -y libapparmor1 && rm -rf /var/lib/apt/lists/*

USER jenkins

ENTRYPOINT ["/usr/local/bin/jenkins.sh"]