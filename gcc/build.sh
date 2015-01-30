#!/bin/bash

./configure --prefix=${PREFIX} --enable-languages=c, fortran

make -j 4
make install