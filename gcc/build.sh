#!/bin/bash

export CFLAGS="-I${PREFIX}/include $CFLAGS"

./configure --prefix=${PREFIX} --enable-languages=c,fortran

make -j 4
make install