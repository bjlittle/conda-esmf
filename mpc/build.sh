#!/bin/bash

echo `find $PREFIX -name '*gmp.h'`

./configure --prefix=${PREFIX}

make -j 4
make install