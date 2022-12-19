#!/bin/sh

useradd -d /home/"$USER" -m "$USER"
echo "$USER":"$PASS" | chpasswd

mkdir /home/"$USER"/mnt
mkdir /home/"$USER"/tmp

/usr/sbin/sshd -D