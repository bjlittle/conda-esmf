#!/bin/bash

export CFLAGS="-I${PREFIX}/include ${CFLAGS}"
export LDFLAGS="-L${PREFIX}/lib ${LDFLAGS}"

./configure --prefix=${PREFIX}

make -j 4
make install