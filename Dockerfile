FROM ubuntu

MAINTAINER Johannes 'fish' Ziemke (@discordianfish)

RUN apt-get -qy update && apt-get -qy install openssh-server
RUN mkdir /var/run/sshd
ADD run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]
