#!/bin/bash

export ESMF_DIR=`pwd`
export ESMF_INSTALL_PREFIX=${PREFIX}
export ESMF_NETCDF="split"

echo `find . -name '*include'`
exit 1

make -j 4
make install
