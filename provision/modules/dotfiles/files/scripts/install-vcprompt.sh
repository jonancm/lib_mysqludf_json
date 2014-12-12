#!/bin/sh
#
# Install vcprompt

BUILD_DIR=/usr/local/src
BIN_DIR=/usr/local/bin

cd $BUILD_DIR
hg clone http://vc.gerg.ca/hg/vcprompt/
cd vcprompt
autoconf
./configure
make
if [ ! -e "$BIND_DIR/vcprompt" ]; then
	ln -s $BUILD_DIR/vcprompt/vcprompt $BIN_DIR
fi
