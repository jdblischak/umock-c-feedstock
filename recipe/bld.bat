@echo on

cmake -S . -B build %CMAKE_ARGS% ^
  -G "Ninja" ^
  -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
  -D use_installed_dependencies=ON ^
  -D run_valgrind:BOOL=ON ^
  -D run_unittests:BOOL=ON ^
  -D run_int_tests:BOOL=ON
if errorlevel 1 exit 1

cmake --build build --target install
if errorlevel 1 exit 1
