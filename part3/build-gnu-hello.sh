#!/bin/sh

set -e
tar zxf "$src"
cd hello-2.12.1
./configure --prefix="$out"
make
make install
