#!/bin/bash

export CFLAGS="-I${PREFIX}/include $CFLAGS"

./configure --prefix=${PREFIX}

make -j 4
make install