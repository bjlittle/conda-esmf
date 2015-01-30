#!/bin/bash

SRCDIR=`pwd`
OBJDIR=`mktemp -d`
INSTALLDIR=`mktemp -d`

pushd ${OBJDIR}

export CFLAGS="-I${PREFIX}/include $CFLAGS"

${SRCDIR}/configure --prefix=${INSTALLDIR} --enable-languages=c,fortran --disable-multilib

echo `ls`
exit 1

make -j 4
make install

popd

rm -r ${OBJDIR}