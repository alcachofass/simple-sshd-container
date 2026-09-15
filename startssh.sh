#!/bin/sh

set -eu

case "$SSH_USER" in
	''|*[!A-Za-z0-9._-]*)
		echo "SSH_USER must contain only letters, numbers, dots, underscores, or hyphens" >&2
		exit 1
		;;
esac

useradd -d /home/"$SSH_USER" -m "$SSH_USER"
echo "$SSH_USER":"$SSH_PASS" | chpasswd

sed "s/__SSH_USER__/$SSH_USER/g" /etc/ssh/sftp.conf.template > /etc/ssh/sshd_config.d/sftp.conf
/usr/sbin/sshd -t
/usr/sbin/sshd -D