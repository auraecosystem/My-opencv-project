#!/usr/bin/env zsh

echo "Initializing OpenCV automation compilation script..."

# 1. Clean old tracking paths
rm -rf build
mkdir build
cd build

# 2. Configure build environment files via CMake
cmake ..

# 3. Compile source code target binary blocks 
cmake --build . --config Release

# 4. Execute the software target module
if [ -f "./MyOpenCVProject" ]; then
    ./MyOpenCVProject
elif [ -f "./Release/MyOpenCVProject.exe" ]; then
    ./Release/MyOpenCVProject.exe
else
    echo "Compilation failed. Target workspace executable not detected."
fi
