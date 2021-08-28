FROM jenkins/jenkins:latest
USER root
RUN apt-get update && apt-get install -y apt-transport-https \
       ca-certificates curl gnupg2 \
       software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
EXPOSE 8080
RUN add-apt-repository \
       "deb [arch=amd64] ttps://download.docker.com/linux/debian \
       $(lsb_release -cs) stable"
