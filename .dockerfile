FROM ubuntu:latest
RUN apt-get update && apt-get install -y git
RUN mkdir /root/.ssh
ADD repo-key /root/.ssh/id_rsa
RUN chmod 700 /root/.ssh/id_rsa
RUN echo "Host bitbucket.org\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config
RUN git clone git@bitbucket.org:Pumalo/docker-conf.git /home/docker-conf
