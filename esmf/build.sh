#!/bin/bash

#git clone --depth 1 git://git.code.sf.net/p/esmf/esmf esmf
#cd esmf/
export ESMF_DIR=`pwd`
export ESMF_INSTALL_PREFIX=$PREFIX
make -j 4
make install
