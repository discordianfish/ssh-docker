FROM alpine

MAINTAINER Johannes 'fish' Ziemke (@discordianfish)

RUN apk add --update openssh
COPY run.sh /run.sh

ENTRYPOINT [ "/run.sh" ]
