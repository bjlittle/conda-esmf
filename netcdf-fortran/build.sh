#!/bin/bash

export PATH=${PREFIX}/gcc/bin:${PATH}
export CFLAGS="-I${PREFIX}/include ${CFLAGS}"
export LDFLAGS="-L${PREFIX}/lib ${LDFLAGS}"

./configure --prefix=${PREFIX}

make
make install