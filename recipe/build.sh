#!/usr/bin/env bash
set -e

cd build

cmake \
    -D CMAKE_INSTALL_PREFIX=${PREFIX} \
    -D CMAKE_PREFIX_PATH=${PREFIX} \
    -D use_installed_dependencies=ON \
    ..

make -j$CPU_COUNT
make install
