#!/bin/bash

export CFLAGS="-I${PREFIX}/include $CFLAGS"

./configure --prefix=${PREFIX} --enable-languages=c,fortran --disable-multilib

make -j 4
make install