#!/bin/sh

useradd -d /home/"$SSH_USER" -m "$SSH_USER"
echo "$SSH_USER":"$SSH_PASS" | chpasswd

/usr/sbin/sshd -D