#!/bin/bash

cp -f scripts/CMakeLists.txt UHDM/python
cmake -B build UHDM -DUHDM_BUILD_TESTS=OFF -DUHDM_WITH_PYTHON=ON -DPython3_EXECUTABLE=`which python`
cmake --build build
cp build/python/uhdm.py .
cp build/python/_py_uhdm.so .
rm -rf third_party build
