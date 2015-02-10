#!/bin/bash

./configure --prefix=${PREFIX}/gmp

make
make check
make install