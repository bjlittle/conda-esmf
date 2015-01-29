#!/bin/bash

export CFLAGS="-I${PREFIX}/include $CFLAGS"
export LDFLAGS="-L${PREFIX}/lib $LDFLAGS"

./configure --prefix=${PREFIX}

echo "before make"

make
make install