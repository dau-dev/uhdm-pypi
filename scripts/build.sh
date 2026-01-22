#!/bin/bash

cp -f scripts/CMakeLists.txt src/
cp -f scripts/python/CMakeLists.txt src/python
cp -f scripts/third_party/capnproto/c++/CMakeLists.txt src/third_party/capnproto/c++/
cmake -B build src -DUHDM_BUILD_TESTS=OFF -DUHDM_WITH_PYTHON=ON -DPython3_EXECUTABLE=`which python`
cmake --build build
cp build/python/uhdm.py .
cp build/python/_py_uhdm.so .
rm -rf third_party build
