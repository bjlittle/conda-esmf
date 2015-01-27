#!/bin/bash


export ESMFMKFILE=`find $ESMF_INSTALL_PREFIX -name '*.mk'`
cd src/addon/ESMPy/
python setup.py build --ESMFMKFILE=$ESMFMKFILE
python setup.py install