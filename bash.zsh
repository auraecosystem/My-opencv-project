#!/usr/bin/env zsh

echo "========================================="
echo " Starting Full Setup & Test Suite        "
echo "========================================="

# 1. Clear out old builds and re-compile binaries
rm -rf build && mkdir build && cd build
cmake ..
cmake --build . --config Release

# 2. Check if running inside a Windows environment environment (Git Bash / MSYS2 / WSL)
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
    echo "Windows platform confirmed. Initializing AutoIt Macro Script..."
    
    # Launch the AutoIt runner executable out in the background independently
    # Note: Requires AutoIt3.exe to be mapped inside your local system PATH
    AutoIt3.exe ../script.au3 & 
    
    # Launch the application execution line immediately right after
    ./Release/MyOpenCVProject.exe
else
    echo "Unix environment detected. Launching desktop binary directly without AutoIt..."
    ./MyOpenCVProject
fi
