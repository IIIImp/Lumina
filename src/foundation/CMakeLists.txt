# Get all source files
# aux_source_directory(. FOUNDATION_SOURCES)
set(CMAKE_CXX_STANDARD 17)
file(GLOB_RECURSE FOUNDATION_SOURCES 
    "${CMAKE_CURRENT_SOURCE_DIR}/*.cpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/*.c"
)
# Create foundation libraries
add_library(LuminaFoundation STATIC ${FOUNDATION_SOURCES})

# Add include directories
target_include_directories(LuminaFoundation PUBLIC 
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_include_directories(LuminaFoundation PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}/Math
    ${CMAKE_CURRENT_SOURCE_DIR}/include/lumina/Foundation
)

# Add Compile Options
target_compile_options(LuminaFoundation PRIVATE 
    ${LUMINA_COMPILER_FLAGS}
)

if(WIN32)
    target_link_libraries(LuminaFoundation PRIVATE dxguid)
endif()