cmake_minimum_required(VERSION 3.20)

# Definition of the project
project(LuminaEngine VERSION 0.1.0 LANGUAGES C CXX DESCRIPTION "Lumina Engine")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Custom CMake modules
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(CompilerFlags)

# Core Source Code(Module)
add_subdirectory(src/rhi)

# Main
add_executable(RHITest samples/RHITest/main.cpp)
target_link_libraries(RHITest PRIVATE RHIModule)