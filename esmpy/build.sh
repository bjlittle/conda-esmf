#!/bin/bash

export ESMFMKFILE=`find ${PREFIX} -name '*.mk'`
cd src/addon/ESMPy/
${PYTHON} setup.py build --ESMFMKFILE=${ESMFMKFILE}
${PYTHON} setup.py install