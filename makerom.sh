#!/usr/bin/env bash

if [[ -z $VERSION || -z $NEXTOR ]]; then
 echo "Variables not set."
 echo "Ex.: export VERSION=1.0.5 NEXTOR=2.1.1 && ./makerom.sh"
 exit 1
fi

if [[ -f ./firmware/sdmmr_v${VERSION}.rom ]]; then
 echo "./firmware/sdmmr_v${VERSION}.rom already exist. Delete it before make a new one."
 exit 1
fi
 
./mknexrom ./nextor/Nextor-${NEXTOR}.base.dat ./firmware/sdmmr_v${VERSION}.rom \
  /d:device.bin \
  /m:./nextor/Mapper-ASCII8.noheader.bin \
  /e:custom_code.bin \
  /8:6000

exit 0
