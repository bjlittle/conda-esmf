#!/bin/bash

export PATH=${PREFIX}/gcc/bin:${PATH}
export ESMFMKFILE=`find ${PREFIX} -name '*esmf.mk'`
ESMPY_SRC=`find . -name '*ESMPy*'`
cd ${ESMPY_SRC}
${PYTHON} setup.py build --ESMFMKFILE=${ESMFMKFILE}
${PYTHON} setup.py install