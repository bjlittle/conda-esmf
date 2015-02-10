#!/bin/bash

#echo `find $PREFIX -name '*gmp.h'`

export CFLAGS="-I${PREFIX}/include $CFLAGS"

#./configure --prefix=${PREFIX}
./configure --prefix=${PREFIX}/mpc \
            --with-gmp-include=${PREFIX}/gmp/include \
            --with-gmp-lib=${PREFIX}/gmp/lib \
            --with-mpfr-include=${PREFIX}/mpfr/include \
            --with-mpfr-lib=${PREFIX}/mpfr/lib

make
make install