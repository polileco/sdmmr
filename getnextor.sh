#!/usr/bin/env bash

if [[ -z $NEXTOR ]]; then
 echo "Variable not set."
 echo "Ex.: export NEXTOR=2.1.1 && ./getnextor.sh"
 exit 1
fi

if [[ -f ./nextor/Nextor-${NEXTOR}.base.dat ]]; then 
 echo "./nextor/Nextor-${NEXTOR}.base.dat already exist. Delete it before make a new one."
 exit 1
fi

wget -q -O "./nextor/Nextor-${NEXTOR}.base.dat" "https://github.com/Konamiman/Nextor/releases/latest/download/Nextor-${NEXTOR}.base.dat"

exit 0
