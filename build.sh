#!/bin/sh

root_dir=$(pwd)

# build ledmon
cd src/ledmon
make CC=aarch64-linux-gnu-gcc ARCH=arm64 CFLAGS="-I$root_dir/include -std=c99" LDFLAGS="-L$root_dir/lib"
make install DESTDIR=$root_dir
cd -

