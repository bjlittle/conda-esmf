#!/bin/bash

echo `env`
exit 1
export ESMFMKFILE=`find ${ESMF_INSTALL_PREFIX} -name '*.mk'`
cd src/addon/ESMPy/
${PYTHON} setup.py build --ESMFMKFILE=$ESMFMKFILE
${PYTHON} setup.py install