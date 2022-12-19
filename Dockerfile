FROM ubuntu:latest

# Default credentials, override through environment variables recommended 
ENV USER "user"
ENV PASS "password"

RUN apt-get update && apt-get install -y openssh-server

RUN mkdir /var/run/sshd

COPY startssh.sh /usr/sbin/startssh.sh
RUN chmod +x /usr/sbin/startssh.sh

EXPOSE 22

CMD ["/usr/sbin/startssh.sh"]
