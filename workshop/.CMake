cmake_minimum_required(VERSION 3.10)
project(MyOpenCVProject LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Force CMake to find your custom repository build folder path
set(OpenCV_DIR "${CMAKE_CURRENT_SOURCE_DIR}/path/to/opencv/build")

# Query and load package headers and libraries
find_package(OpenCV REQUIRED)

message(STATUS "Configuring Project Targets...")
message(STATUS "Using OpenCV from: ${OpenCV_DIR}")
message(STATUS "OpenCV Version Found: ${OpenCV_VERSION}")

# Map binaries to your source files
add_executable(MyOpenCVProject Main.cpp)

# Link frameworks 
target_include_directories(MyOpenCVProject PRIVATE ${OpenCV_INCLUDE_DIRS})
target_link_libraries(MyOpenCVProject PRIVATE ${OpenCV_LIBS})
