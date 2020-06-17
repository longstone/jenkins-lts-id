FROM jenkins/jenkins:lts

ENV UID=5001
ENV GID=5001

USER root
RUN groupmod -g ${GID} jenkins && \ 
  usermod -u ${UID} -g ${GID} jenkins
USER jenkins
