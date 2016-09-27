#!/bin/bash

cat << EOF > setup.py
from os.path import abspath, dirname, join
from setuptools import find_packages, setup


FOLDER = dirname(abspath(__file__))
DESCRIPTION = '\n\n'.join(open(join(FOLDER, x)).read().strip() for x in [
    'README.rst', 'CHANGES.rst'])
setup(
    name='invisibleroads-macros',
    version='0.7.1',
    description='Shortcut functions',
    long_description=DESCRIPTION,
    classifiers=[
        'Programming Language :: Python',
        'License :: OSI Approved :: MIT License',
    ],
    author='Roy Hyunjin Han',
    author_email='rhh@crosscompute.com',
    url='http://invisibleroads.com',
    keywords='invisibleroads',
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False
)
EOF

$PYTHON setup.py install 

# Add more build steps here, if they are necessary.

# See
# http://docs.continuum.io/conda/build.html
# for a list of environment variables that are set during the build process.