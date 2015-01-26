#!/bin/bash

git clone --depth=1 git://git.code.sf.net/p/esmf/esmf esmf
cd esmf/
export ESMF_DIR=`pwd`
export ESMF_INSTALL_PREFIX=`pwd`/conda_install
make -j 4
make install
export ESMFMKFILE=`find $ESMF_INSTALL_PREFIX -name '*.mk'`
cd src/addon/ESMPy/
python setup.py build --ESMFMKFILE=$ESMFMKFILE
python setup.py install

