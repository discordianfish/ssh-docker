#!/bin/sh

mkdir -p /root/.ssh

echo $@ > /root/.ssh/authorized_keys
ssh-keygen -A
exec /usr/sbin/sshd -D
