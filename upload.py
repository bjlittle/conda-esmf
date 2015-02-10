import os
from subprocess import check_output, check_call


PKGS = ['gmp', 'mpfr', 'mpc', 'gcc', 'netcdf-c', 'netcdf-fortran', 'esmf', 'esmpy']
ROOT = '/home/ubuntu/git/conda-esmf'

for pkg in PKGS:
    os.chdir(os.path.join(ROOT, pkg))
    to_upload = check_output(['conda', 'build', '--output', '.']).strip()
    check_call(['binstar', 'upload', to_upload])