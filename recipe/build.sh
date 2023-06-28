#!/usr/bin/env bash
set -eux

cmake -S . -B build $CMAKE_ARGS \
  -D use_installed_dependencies=ON \
  -D run_valgrind:BOOL=ON \
  -D run_unittests:BOOL=ON \
  -D run_int_tests:BOOL=ON

cmake --build build -j$CPU_COUNT --target install
