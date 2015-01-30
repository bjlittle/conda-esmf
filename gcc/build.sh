#!/bin/bash

SRCDIR=`pwd`
OBJDIR=`mktemp`

pushd ${OBJDIR}

export CFLAGS="-I${PREFIX}/include $CFLAGS"

${SRCDIR}/configure --prefix=${PREFIX} --enable-languages=c,fortran --disable-multilib

make -j 4
make install

popd

rm -r ${OBJDIR}