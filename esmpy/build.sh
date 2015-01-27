#!/bin/bash

export ESMFMKFILE=`find ${PREFIX} -name '*.mk'`
ESMPY_SRC=`find . -name '*src*addon*ESMPy*'`
echo ESMPY_SRC
exit 1
${PYTHON} setup.py build --ESMFMKFILE=${ESMFMKFILE}
${PYTHON} setup.py install