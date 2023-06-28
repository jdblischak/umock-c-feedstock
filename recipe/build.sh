#!/usr/bin/env bash
set -eux

cmake -S . -B build \
  -D use_installed_dependencies=ON \
  $CMAKE_ARGS

grep PREFIX build/CMakeCache.txt

cmake --build build -j$CPU_COUNT --target install
