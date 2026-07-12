# Comprehensive Installation & Build Matrix (v1.0.0)

This guide walks you through compiling the C++ core and setting up the Python environments for Windows, Linux, and macOS.

## Prerequisites
* CMake 3.15 or higher
* C++17 compliant compiler (GCC 9+, Clang 11+, or MSVC 2019+)
* Python 3.8 or higher + pip

---

## 🏁 1. Linux Setup (Ubuntu/Debian)

### Native Dependencies
```bash
sudo apt update && sudo apt install -y build-essential cmake git pkg-config \
    libjpeg-dev libpng-dev libtiff-dev \
    libavcodec-dev libavformat-dev libswscale-dev libv4l-dev \
    libxvidcore-dev libx264-dev libgtk-3-dev
```

### Python Virtual Environment
```bash
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install opencv-python opencv-contrib-python pytest numpy
```

### Building C++ Framework
```bash
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --parallel \$(nproc)
```

---

## 🍏 2. macOS Setup (Apple Silicon / Intel)

### Dependencies via Homebrew
```bash
brew install cmake opencv pkg-config
```

### Python Virtual Environment
```bash
python3 -m venv venv
source venv/bin/activate
pip install opencv-python pytest numpy
```

### Building C++ Framework
```bash
mkdir build && cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --parallel \$(sysctl -n hw.ncpu)
```

---

## 🪟 3. Windows Setup

### Native Packagers
We recommend using **vcpkg** for straightforward library binding:
```powershell
git clone https://github.com
.\vcpkg\bootstrap-vcpkg.bat
.\vcpkg\vcpkg install opencv:x64-windows
```

### Compilation (PowerShell / Git Bash)
```powershell
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=C:/path/to/vcpkg/scripts/buildsystems/vcpkg.cmake ..
cmake --build . --config Release
```
