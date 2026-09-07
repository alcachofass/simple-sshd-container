FROM ubuntu:latest

RUN apt update -y && apt upgrade -y && apt install -y openssh-server

COPY startssh.sh /usr/sbin/startssh.sh
RUN chmod +x /usr/sbin/startssh.sh

EXPOSE 22

CMD ["/usr/sbin/startssh.sh"]
