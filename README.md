# simple-sshd-container
A container image that runs sshd. Supports SFTP and SSH.

## Notes
* /mnt and /tmp folders are created inside the user's home directory for mounting shared storage as needed.
* USER and PASS environment variables can be set to automatically create the user and home folder on container launch. 
