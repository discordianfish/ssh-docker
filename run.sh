#!/bin/sh

mkdir -p /root/.ssh

echo $@ > /root/.ssh/authorized_keys

exec /usr/sbin/sshd -D
