#!/bin/bash

pushd UHDM
git fetch --all
LAST=`git describe --tags --abbrev=0`
git checkout $LAST
git submodule update --init --recursive
echo $LAST
popd
