#!/bin/bash

export CFLAGS="-I${PREFIX}/include $CFLAGS"

./configure --prefix=${PREFIX}

make
make install