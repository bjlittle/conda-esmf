#!/bin/bash

#export CFLAGS="-I${PREFIX}/include $CFLAGS"

#./configure --prefix=${PREFIX}
./configure prefix=${PREFIX}/mpfr --with-gmp-include=${PREFIX}/gmp/include --with-gmp-lib=${PREFIX}/gmp/lib

make
make install