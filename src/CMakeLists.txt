# Arrange all modules
set(CMAKE_CXX_STANDARD 17)
# Foundation Module, No dependencies
add_subdirectory(foundation)

# Platform Module, Only depends on Foundation Module
# add_subdirectory(platform)

# Core Module
# add_subdirectory(ecs)
# add_subdirectory(rhi)

# Engine Core and System, Complex dependencies
# add_subdirectory(engine)
# add_subdirectory(systems)

# Create Main Library, which Combine all modules
add_library(LuminaEngine STATIC
    $<TARGET_OBJECTS:LuminaFoundation>
#    $<TARGET_OBJECTS:LuminaPlatform>
 #   $<TARGET_OBJECTS:LuminaECS>
#    $<TARGET_OBJECTS:LuminaRHI>
#    $<TARGET_OBJECTS:LuminaEngineCore>
#    $<TARGET_OBJECTS:LuminaSystems>
)

# Set Engine Properties
target_include_directories(LuminaEngine PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

target_link_libraries(LuminaEngine PUBLIC
    LuminaFoundation
 #   LuminaPlatform
#    LuminaECS
 #   LuminaRHI
#    LuminaEngineCore
#    LuminaSystems
)

# Add Compiler Definitions
target_compile_definitions(LuminaEngine PUBLIC
    LUMINA_ENGINE=1
    $<$<CONFIG:Debug>:LUMINA_DEBUG=1>
    $<$<CONFIG:Release>:LUMINA_RELEASE=1>
)
