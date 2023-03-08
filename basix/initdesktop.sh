#!/bin/bash
if [ ! -z "$(pgrep lxpanel)" ]; then
  synclient TapButton1=1
  synclient VertEdgeScroll=1
fi

if [ -d /run/live ]; then
  cp /etc/skel/Desktop/install-debian.desktop ~/Desktop
  sleep 30
  zenity --warning --title="インストールの注意点" --text="このバージョン（64ビット版）はレガシー(Bios)環境にインストールできます\nUEFI環境にはインストールできないことに注意してください" --no-wrap
else
  rm -f ~/Desktop/install-debian.desktop
fi

