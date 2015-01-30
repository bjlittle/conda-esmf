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

./configure \
    --prefix=$PREFIX \
    --disable-multilib \
    --enable-languages=c,c++,fortran

make
make install