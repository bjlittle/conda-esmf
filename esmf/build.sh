#!/bin/bash

export ESMF_DIR=`pwd`
export ESMF_INSTALL_PREFIX=${PREFIX}
export ESMF_NETCDF="split"

echo ${PREFIX}
exit 1

make -j 4
make install
