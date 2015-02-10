#!/bin/bash

export PATH=${PREFIX}/gcc/bin:${PATH}
export CFLAGS="-I${PREFIX}/include $CFLAGS"
export LDFLAGS="-L${PREFIX}/lib $LDFLAGS"

./configure \
    --enable-shared \
    --enable-netcdf-4 \
    --enable-dap \
    --prefix=${PREFIX}

make
make install