#!/bin/bash
LIBSODIUM="libsodium-noclamp"

if [ ! -d $LIBSODIUM ]
then
  rm -rf libsodium-noclamp
  git clone https://github.com/KinanBab/libsodium.git libsodium-noclamp
  cd libsodium-noclamp    
else
  cd libsodium-noclamp
  git pull
fi

./install.sh

