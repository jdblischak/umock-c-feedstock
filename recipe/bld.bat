@echo on

cmake -S . -B build ^
  -G "Ninja" ^
  -D use_installed_dependencies=ON
if errorlevel 1 exit 1

type build/CMakeCache.txt

cmake --build build --target install
if errorlevel 1 exit 1
