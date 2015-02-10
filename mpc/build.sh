#!/bin/bash

#echo `find $PREFIX -name '*gmp.h'`

export CFLAGS="-I${PREFIX}/include $CFLAGS"

./configure --prefix=${PREFIX}

make
make install