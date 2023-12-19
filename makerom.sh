#!/usr/bin/env bash

if [[ -z $VERSION || -z $NEXTOR ]]; then
 echo "Variables not set."
 echo "Ex.: export VERSION=1.0.6 NEXTOR=2.1.2 && ./makerom.sh"
 exit 1
fi

if [[ -f ./firmware/sdmmr${VERSION//./}.rom ]]; then
 echo "./firmware/sdmmr${VERSION//./}.rom already exist. Delete it before make a new one."
 exit 1
fi
 
./mknexrom ./nextor/Nextor-${NEXTOR}.base.dat ./firmware/sdmmr${VERSION//./}.rom \
  /d:device.bin \
  /m:./nextor/Mapper-ASCII8.noheader.bin \
  /e:custom_code.bin \
  /8:6000

exit 0
