FROM centos
MAINTAINER kusari-k

RUN dnf update -y
#RUN dnf install -y epel-release
RUN dnf update -y
RUN dnf clean all

#EXPOSE 9999

COPY run.sh  /usr/local/bin/
RUN  chmod 755 /usr/local/bin/run.sh

ENTRYPOINT ["/usr/local/bin/run.sh"]
