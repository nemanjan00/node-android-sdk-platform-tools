#!/bin/bash

PKGBUILD=`curl https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=android-sdk-platform-tools | fgrep pkgver | head -n1 | cut -d"=" -f2`

wget https://dl.google.com/android/repository/platform-tools_r$PKGBUILD-linux.zip -O /tmp/adb.zip

echo $PKGBUILD > ./version.txt

mkdir -p binary

unzip /tmp/adb.zip -d binary

