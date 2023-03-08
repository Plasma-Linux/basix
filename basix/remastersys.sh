#!/bin/bash
apt-get clean
rm -f /var/cache/debconf/*-old /var/lib/dpkg/*-old
rm -f /etc/initramfs-tools/conf.d/resume
remastersys clean
remastersys dist $1
