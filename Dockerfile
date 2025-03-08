FROM jenkins/ssh-agent:debian-jdk17

RUN apt-get update; \
    apt-get -y install ansible sudo

RUN mkdir -p /etc/sudoers.d
RUN echo "jenkins ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/jenkins
RUN usermod -a -G sudo jenkins
