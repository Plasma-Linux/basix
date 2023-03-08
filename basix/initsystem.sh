#!/bin/bash
cp /etc/basix/os-release /etc
if [ ! -z "$(grep Seat: /etc/lightdm/lightdm.conf)" ]; then
  sed -i -e "/Seat:/d" /etc/lightdm/lightdm.conf
fi
if [ -z "$(grep contrib /etc/apt/sources.list)" ]; then
  cp /etc/basix/sources.list /etc/apt
fi
sleep 10
if [ ! -z "$(rfkill|grep wlan|grep " blocked")" ]; then
  rfkill unblock wlan
fi

