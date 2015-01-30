#!/bin/bash

export CFLAGS="-I${PREFIX}/include $CFLAGS"
export LDFLAGS="-L${PREFIX}/lib $LDFLAGS"

./configure \
    --enable-shared \
    --enable-netcdf-4 \
    --enable-dap \
    --prefix=${PREFIX}

make -j 4
make install