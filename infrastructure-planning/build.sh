#!/bin/bash

# Bundle invisibleroads-macros straight from gh/master
# NOTE:  This will install some dependencies via pip
rm -rf invisibleroads-macros
git clone https://github.com/invisibleroads/invisibleroads-macros
pushd invisibleroads-macros
${PYTHON} setup.py install --prefix "${PREFIX}"
popd

$PYTHON setup.py install 

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.
