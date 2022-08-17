#!/usr/bin/env bash
set -e

mkdir -p build
cd build

cmake \
    -D CMAKE_INSTALL_PREFIX=${PREFIX} \
    -D CMAKE_PREFIX_PATH=${PREFIX} \
    -D CMAKE_BUILD_TYPE=Release \
    -D CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP=True \
    -D BUILD_SHARED_LIBS=ON \
    -D use_installed_dependencies=ON \
    ${SRC_DIR}

make -j$CPU_COUNT
make install
