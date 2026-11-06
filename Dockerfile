FROM ubuntu:26.04

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y openssh-server --no-install-recommends

COPY startssh.sh /usr/sbin/startssh.sh
RUN chmod +x /usr/sbin/startssh.sh

EXPOSE 22

CMD ["/usr/sbin/startssh.sh"]
