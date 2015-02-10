#!/bin/bash

#SRCDIR=`pwd`
#OBJDIR=`mktemp -d`
#INSTALLDIR=`mktemp -d`
#
#pushd ${OBJDIR}
#
export CFLAGS="-I${PREFIX}/include $CFLAGS"
#
#${SRCDIR}/configure --prefix=${INSTALLDIR} --enable-languages=c,c++fortran --disable-multilib
#
#make -j 4
#make install
#
#popd
#
#rm -r ${OBJDIR}

#./configure \
#    --prefix=${PREFIX} \
#    --disable-multilib \
#    --enable-languages=c,c++,fortran \
#    --enable-threads

./configure --prefix=${PREFIX}/gcc \
            --enable-languages=c,c++,fortran \
            --enable-checking=release \
            --disable-bootstrap \
            --enable-threads \
            --with-gmp=${PREFIX}/gmp \
            --with-mpfr=${PREFIX}/mpfr \
            --with-mpc=${PREFIX}/mpc \
            --disable-multilib

make
make install