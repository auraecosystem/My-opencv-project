cmake_minimum_required(VERSION 3.22)
project(OpenCV5_Local_Project)

## OpenCV 5.0 requires C++17
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

## Locate the pre-built OpenCV installation. If CMake cannot find it
## automatically, pass the path explicitly:
##   cmake -DOpenCV_DIR=/absolute/path/to/opencv/build/ ..
find_package(OpenCV 5.0 REQUIRED)

message(STATUS "Found OpenCV version: ${OpenCV_VERSION}")
message(STATUS "OpenCV include directories: ${OpenCV_INCLUDE_DIRS}")

add_executable(opencv_test_app main.cpp)
target_link_libraries(opencv_test_app PRIVATE ${OpenCV_LIBS})

cmake_minimum_required(VERSION 3.15)
project(MyOpenCV LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCV REQUIRED)

include_directories(${OpenCV_INCLUDE_DIRS})

# Primary execution target binary mapping
add_executable(MyOpenCVApp src/Main.cpp)
target_link_libraries(MyOpenCVApp ${OpenCV_LIBS})

# Test configuration layout architecture hooks
enable_testing()
add_executable(RunTests tests/test_main.cpp)
target_link_libraries(RunTests ${OpenCV_LIBS})
add_test(NAME CoreCppUnitTests COMMAND RunTests)
