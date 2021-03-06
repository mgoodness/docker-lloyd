FROM fish/docker-backup
MAINTAINER Michael Goodness <mgoodness@gmail.com>

RUN apt-get update -q && DEBIAN_FRONTEND=noninteractive apt-get upgrade -q -y

ADD run /docker-backup/

VOLUME /root/.ssh
ENTRYPOINT [ "./run" ]
