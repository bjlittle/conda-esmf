#!/bin/bash

SRCDIR=`pwd`
OBJDIR=/tmp/objdir

mkdir OBJDIR
cd OBJDIR

export CFLAGS="-I${PREFIX}/include $CFLAGS"

${SRCDIR}/configure --prefix=${PREFIX} --enable-languages=c,fortran --disable-multilib

make -j 4
make install