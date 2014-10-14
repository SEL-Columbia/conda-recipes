#!/bin/bash
# Script to build sequencer and upload to binstar
# Should be run on all architectures

# so that conda doesn't exit after running
conda config --set always_yes yes --set changeps1 no

echo "Building Sequencer"
rm -rf $HOME/miniconda/conda-bld/linux-64/sequencer-*.bz2
conda build Sequencer

echo "Uploading to Binstar"
binstar upload $HOME/miniconda/conda-bld/linux-64/sequencer-*.bz2

