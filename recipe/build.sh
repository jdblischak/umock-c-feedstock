#!/usr/bin/env bash
set -e

mkdir -p build
cd build

cmake \
    -DCMAKE_INSTALL_PREFIX=${PREFIX} \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP=True \
    -DBUILD_SHARED_LIBS=ON \
    -Duse_installed_dependencies=ON \
    ${SRC_DIR}

make -j$CPU_COUNT
make install
