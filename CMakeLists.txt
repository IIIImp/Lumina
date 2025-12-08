cmake_minimum_required(VERSION 3.20)

# Definition of the project
project(LuminaEngine VERSION 0.1.0 LANGUAGES C CXX DESCRIPTION "Lumina Engine")

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD REQUIRED ON)

# Custom CMake modules
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
include(CompilerFlags)
# include(Dependencies)
# include(FindDirectX)
# include(FindVulkan)

# set ouput directory
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${LIB_OUTPUT_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${LIB_OUTPUT_DIR})
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${BIN_OUTPUT_DIR})

include_directories(${PROJECT_SOURCE_DIR}/src)

# Core Source Code
add_subdirectory(src)