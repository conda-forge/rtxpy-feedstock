#!/bin/bash
set -ex

# Install pyoptix-contrib from PyPI (not available on conda-forge)
PIP_NO_INDEX=0 ${PYTHON} -m pip install pyoptix-contrib --no-deps --no-build-isolation -vv

# Install rtxpy (pre-compiled kernel.ptx is included in the sdist)
${PYTHON} -m pip install . --no-deps --no-build-isolation -vv
