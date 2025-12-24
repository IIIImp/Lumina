# Module Project settings
project(RHIModule LANGUAGES CXX)

# Collect all source files
set(RHI_SOURCES
    src/test.cpp
)

# create library
add_library(RHIModule STATIC ${RHI_SOURCES})

# Exposure Module API. Deal with .h files
target_include_directories(RHIModule
    PUBLIC
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    PRIVATE
        $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/src>
) 

# D3D12 dependencies
if (WIN32)
    target_link_libraries(RHIModule PRIVATE
        d3d12.lib
        dxgi.lib
        d3dcompiler.lib
        dxguid.lib
    )
endif()
