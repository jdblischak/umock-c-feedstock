@echo on

echo CONDA_BUILD=%CONDA_BUILD%
echo CMAKE_ARGS=%CMAKE_ARGS%
echo CMAKE_PREFIX_PATH=%CMAKE_PREFIX_PATH%

cmake -S . -B build ^
  -G "Ninja" ^
  -D use_installed_dependencies=ON ^
  %CMAKE_ARGS%
if errorlevel 1 exit 1

type build\CMakeCache.txt

cmake --build build --target install
if errorlevel 1 exit 1
