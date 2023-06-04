#!/usr/bin/env bash

VERSION=1.0.5

./mknexrom Nextor-2.1.1.base.dat sdmmr_v${VERSION}.rom \
  /d:device.bin \
  /m:Mapper-ASCII8.noheader.bin \
  /e:custom_code.bin \
  /8:6000

exit 0
