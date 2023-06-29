#!/usr/bin/env bash
set -eux

cmake -S . -B build $CMAKE_ARGS \
  -D BUILD_SHARED_LIBS=ON \
  -D use_installed_dependencies=ON

cmake --build build -j$CPU_COUNT --target install
