@echo on

cmake -S . -B build %CMAKE_ARGS% ^
  -G "Ninja" ^
  -D use_installed_dependencies=ON
if errorlevel 1 exit 1

cmake --build build --target install
if errorlevel 1 exit 1
